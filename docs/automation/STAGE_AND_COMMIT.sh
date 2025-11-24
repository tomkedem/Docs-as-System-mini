#!/usr/bin/env bash
set -euo pipefail

# Runtime vars (provided by caller)
COMMIT_SCOPE="${COMMIT_SCOPE:-docs}"  # docs | src | mixed
MESSAGE="${MESSAGE:-}"

log()  { echo "[COMMIT] $*"; }
fail() { echo "[COMMIT][ERROR] $*" >&2; exit 1; }

CONFIG_FILE="docs/agent/AGENT_CONFIG.mini.yaml"

# Validate config
[[ -f "$CONFIG_FILE" ]] || fail "AGENT_CONFIG.mini.yaml not found at: $CONFIG_FILE"

command -v yq >/dev/null 2>&1 ||
  fail "yq is required but not installed. Install from https://github.com/mikefarah/yq"

# Load Git-related configuration
ALLOW_AGENT_COMMIT="$(yq '.git.allowAgentCommit' "$CONFIG_FILE")"
mapfile -t PROTECTED_BRANCHES   < <(yq '.git.protectedBranches[]' "$CONFIG_FILE")
mapfile -t ALLOWED_PATHS_ARRAY  < <(yq '.git.allowedPaths[]' "$CONFIG_FILE")
COMMIT_INCLUDE_TAGS="$(yq '.git.commitMessage.includeTags' "$CONFIG_FILE")"
mapfile -t COMMIT_TRAILERS < <(yq '.git.commitMessage.trailers[]' "$CONFIG_FILE")

# Validate Git repository
git rev-parse --is-inside-work-tree >/dev/null 2>&1 ||
  fail "Not inside a Git repository"

# Enforce commit permission
if [[ "$ALLOW_AGENT_COMMIT" != "true" ]]; then
  fail "Commit is blocked by policy (allowAgentCommit=false)."
fi

# Protect configured branches
current_branch="$(git rev-parse --abbrev-ref HEAD)"
for pattern in "${PROTECTED_BRANCHES[@]}"; do
  if [[ "$current_branch" == $pattern ]]; then
    fail "Commit on protected branch is not allowed: $current_branch (matched: $pattern)"
  fi
done

# Require explicit file list from caller
if [[ "$#" -eq 0 ]]; then
  fail "No paths provided. Call this script with the list of files or folders to stage."
fi

# Helper: check if path is allowed by git.allowedPaths
is_path_allowed() {
  local target="$1"
  local base
  for base in "${ALLOWED_PATHS_ARRAY[@]}"; do
    # Normalize possible trailing slash in config
    case "$target" in
      "$base"/*|"${base%/}"/*|"$base"|"${base%/}")
        return 0
        ;;
    esac
  done
  return 1
}

# Validate all requested paths are allowed
for target in "$@"; do
  if ! is_path_allowed "$target"; then
    fail "Path not allowed by git.allowedPaths policy: $target"
  fi
done

log "Staging explicit paths: $*"
git add "$@"

# Ensure there are staged changes
if git diff --cached --quiet; then
  fail "No staged changes. Nothing to commit."
fi

# Build base commit message
if [[ -z "$MESSAGE" ]]; then
  MESSAGE="Update based on current task"
fi

if [[ "$COMMIT_INCLUDE_TAGS" == "true" ]]; then
  MESSAGE="$MESSAGE

Tags: SCOPE:$COMMIT_SCOPE, DOCS_AS_SYSTEM_MINI_EDITION"
fi

# Build final commit message with optional trailers
tmpfile="$(mktemp)"
{
  printf '%s\n' "$MESSAGE"
  printf '\n'
  printf 'Scope: %s\n' "$COMMIT_SCOPE"
  printf 'Automation: Agent-Commit\n'

  for trailer in "${COMMIT_TRAILERS[@]}"; do
    printf '%s\n' "$trailer"
  done
} > "$tmpfile"

git commit -F "$tmpfile"
rm -f "$tmpfile"

log "Commit created successfully on branch $current_branch."
