📘 Docs-as-System – mini edition  
⚠️ System File  

This file is part of the official Docs-as-System methodology.  
End users must not modify this file.  
Update this file only through the methodology’s source repository.

---

# PROMPTS INDEX  
Complete index of all prompts in Docs-as-System mini

This document collects all prompts in the methodology  
and provides a short explanation of their purpose  
and how they connect to one another.

---

## Context Understanding  
### prompt_understand_context.mini.md  
Reads all project documents  
detects contradictions  
and prepares the ground for a new development cycle.

---

## Step Preparation  
### prompt_prepare_step.mini.md  
Identifies the active step  
and the tasks relevant to the current cycle  
based on the Implementation Plan.

---

## Task Execution  
### prompt_execute_task.mini.md  
Performs the smallest required code change  
needed for the task.  
Does not refactor.  
Does not modify files not defined by the task.

---

## Self Check  
### prompt_self_check.mini.md  
Validates alignment with all documents.  
Ensures no deviation from the task.  
Ensures all tests pass.

---

## Log Update  
### prompt_update_log.mini.md  
Adds a new entry to the IMPLEMENTATION_LOG  
based on the predefined template.

---

## Commit Preparation  
### prompt_prepare_commit.mini.md  
Builds the commit message based on the latest log entry.  
Determines which files should be staged.  
Executes the STAGE_AND_COMMIT.sh script.

---

## Pull Request Preparation  
### prompt_prepare_pull_request.mini.md  
Builds a full methodology compliant pull request  
based on the log and project documents.  
Executes the OPEN_PULL_REQUEST.sh script.

---

## Handling Human Edits  
### prompt_human_edit_mode.mini.md  
Stops the cycle and presents the manual human changes.

### prompt_analyze_human_changes.mini.md  
Provides a full analysis of the human change  
and waits for a clear human decision before continuing.

---

## Orchestration  
### prompt_main_orchestration.mini.md  
Manages the entire development cycle start to finish.  
Activates all prompts in a strict order.  
Stops on any invalid or unclear condition.

---

This file is a protected system component.  
It is part of the official Docs-as-System methodology  
and must not be modified by end users.

© 2025 Tomer Kedem
