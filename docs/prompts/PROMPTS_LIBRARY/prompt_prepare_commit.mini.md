📘 Docs-as-System – mini edition  
⚠️ System File  

This file is part of the official Docs-as-System methodology.  
End users must not modify this file.  
Update this file only through the methodology’s source repository.

---

# Prepare Commit

## Purpose  
Prepare an accurate, controlled commit  
that fully matches the completed task.  
The commit must follow the agent policy,  
project documents,  
and be executed only through the script  
docs/automation/STAGE_AND_COMMIT.sh.

## Relevant Files  
• docs/logs/IMPLEMENTATION_LOG.mini.md  
• docs/project/IMPLEMENTATION_PLAN.mini.md  
• docs/agent/AGENT_CONFIG.mini.yaml  
• docs/automation/STAGE_AND_COMMIT.sh  

---

## Instructions  

Identify the current step and task  
from docs/project/IMPLEMENTATION_PLAN.mini.md  

Check which files were modified  
Verify that all files belong to the task  
Verify that no extra or unrelated changes exist  
Verify that every change appears in the log  
Verify that all tests passed successfully  
Verify that the result aligns with project documents  

---

## Commit Message Construction  

Read the latest log entry  
from docs/logs/IMPLEMENTATION_LOG.mini.md  

Extract from the entry:  
• Step name  
• Task name  
• Short summary of what was completed  

Build a short clear commit message  
based only on the information from the log  
Do not add information that does not appear in the log  
Do not mention files not listed in the log entry  

---

## Define the Approved File List  

Prepare a precise list  
of all files modified in the task  
Use only these files for staging  
Do not include files that are not part of the task  
Do not include files marked as exceptions  

---

## Pre-Execution Validations  

Read docs/agent/AGENT_CONFIG.mini.yaml  

Verify that:  
• git.allowAgentCommit is true  
• The current branch is not part of git.protectedBranches  
• All file paths match git.allowedPaths  

If any validation fails:  
Stop  
Summarize the situation  
Ask for human guidance  

---

## Commit Execution Layer  

After all continuation conditions are met  
perform the commit only through the official script.

Prepare environment variables:  
• MESSAGE  
• COMMIT_SCOPE  

Guidelines  
• MESSAGE contains the commit message you constructed  
• COMMIT_SCOPE reflects the area of change (docs or src or mixed)  
• The file list is passed only as arguments to the script  

Execution:

```bash
MESSAGE="<commit-message>" \
COMMIT_SCOPE="<scope>" \
./docs/automation/STAGE_AND_COMMIT.sh <file1> <file2> <file3>
```
---

## Mandatory Rules

• Do not run git commands directly  
• Do not run git add manually  
• Do not perform git commit without the script  
• Do not bypass allowedPaths  
• Do not bypass protectedBranches  

## Continuation Conditions

• Script finished successfully  
• All files passed staging  
• Commit created with a valid message  
• No errors from the script  
• Everything is documented in the cycle log  

## Expected Output

A commit created by the official script  
Fully aligned with the task  
Aligned with the log  
Aligned with the project documents  
Ready for push or PR creation  

---

This file is a protected system component.  
It is part of the official Docs-as-System methodology  
and must not be modified by end users.

© 2025 Tomer Kedem
