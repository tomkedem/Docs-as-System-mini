📘 Docs-as-System – mini edition  
⚠️ System File  

This file is part of the official Docs-as-System methodology.  
End users must not modify this file.  
Update this file only through the methodology’s source repository.

---

# Prepare Pull Request

## Purpose  
Prepare a structured and accurate pull request  
based on the project documents,  
the latest entry in the implementation log,  
and the results of the completed task.  
The pull request must be opened only through the official script  
docs/automation/OPEN_PULL_REQUEST.sh.

## Relevant Files  
• docs/logs/IMPLEMENTATION_LOG.mini.md  
• docs/project/IMPLEMENTATION_PLAN.mini.md  
• docs/project/PROJECT_SPEC.mini.md  
• docs/project/ARCHITECTURE_BLUEPRINT.mini.md  
• docs/agent/AGENT_CONFIG.mini.yaml  
• docs/automation/OPEN_PULL_REQUEST.sh  

---

## Instructions  

Read the latest log entry  
from docs/logs/IMPLEMENTATION_LOG.mini.md  

Identify from the entry:  
• Step name  
• Task name  
• Task purpose  
• Summary of what was completed  
• Key modified files  
• Test results  

Verify that:  
• No change was made outside the scope of the task  
• The result aligns with PROJECT_SPEC  
• The result aligns with ARCHITECTURE_BLUEPRINT  
• All tests passed successfully  

---

## Build Title and Body for the Pull Request  

### Title  
Short format  
Step + Task  
Example:  
"BuildAPI – AddValidationRules"

### Body  
Include only the following:  
• Short description of the task purpose  
• Clear summary of what was done  
• Key modified files  
• How the change aligns with SPEC and the Blueprint  
• Test results  
• Important notes for the human reviewer  

Do not add any information that does not appear  
in the log or project documents.  
Do not include code that is not part of the task.

---

## Pre-PR Validations  

Read docs/agent/AGENT_CONFIG.mini.yaml  

Verify that:  
• The current branch is not in git.protectedBranches  
• The branch has an upstream  
  If it does not, stop and ask for human instruction  
• There is no existing pull request for this branch  
  The script OPEN_PULL_REQUEST.sh performs an additional check  

---

## Execution Layer  

After all conditions are met  
open the PR only using the official script.

Prepare environment variables:  
• PR_TITLE  
• PR_BODY  

Execution:

```bash
PR_TITLE="<short-title>" \
PR_BODY="<pull-request-body>" \
./docs/automation/OPEN_PULL_REQUEST.sh
```
---

## Mandatory Rules

• Do not open PRs through gh  
• Do not open PRs through GitHub UI  
• Do not create a title that is not based on step + task  
• Do not create a PR body not based on the log  
• Do not perform PR from a branch in protectedBranches  

## Continuation Conditions

• Script finished successfully  
• Pull request created as draft  
• Title matches step and task  
• Body matches the log and documents  
• No errors returned from the script  
• Everything is documented in the implementation log  

## Expected Output

A structured pull request  
Short and clear  
Methodology compliant  
Based on the log  
Aligned with the documents  
Ready for human review  

---

This file is a protected system component.  
It is part of the official Docs-as-System methodology  
and must not be modified by end users.

© 2025 Tomer Kedem
