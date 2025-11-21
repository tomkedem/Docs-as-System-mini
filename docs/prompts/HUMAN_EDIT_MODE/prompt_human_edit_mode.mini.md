📘 Docs-as-System – mini edition  
⚠️ System File  

This file is part of the official Docs-as-System methodology.  
End users must not modify this file.  
Update this file only through the methodology’s source repository.

---

# Human Edit Mode

## Purpose  
Handle any situation where a human manually edited files  
outside the regular development cycle.  
The agent must stop immediately  
and wait for clear human guidance  
without allowing automatic continuation  
or attempting to fix anything.

This prompt becomes relevant immediately after detecting a human change during:  
• self check  
• update log  
• prepare commit  
• prepare pull request  

## Relevant Files  
docs/agent/HUMAN_OPERATIONAL_POLICY.mini.md  
docs/agent/AGENT_OPERATIONAL_POLICY.mini.md  
docs/logs/IMPLEMENTATION_LOG.mini.md  

---

## Instructions  

Stop the entire development cycle  
Do not continue to the next stage  
Do not perform a commit  
Do not create a pull request  
Do not attempt to fix the change  

Identify the files that the human edited  
Identify the type of change  
Identify whether the change aligns with the project documents  

Prepare a short, clear summary for the human containing:  
• Which files were detected  
• What differences were found  
• Which parts affect the current task  
• Whether there is any contradiction with project documents  
• Whether the change requires a log update  
• Whether tests are needed  

Do not interpret the human’s intention  
Do not guess  
Do not draw logical conclusions  
Do not fix anything  
The agent must wait for instruction  

---

## Mandatory Rules  

• Do not continue the development cycle  
• Do not merge manually changed code  
• Do not commit  
• Do not push  
• Do not refactor  
• Do not update documents  
• Do not run logical tests unless requested by the human  

---

## Continuation Conditions  

The human provides a clear instruction specifying:  
• Whether the change was intentional  
• Whether documents should be updated  
• Whether a change analysis should run  
• Whether to return to the task  
• Whether to open a new task  

---

## Expected Output  

A short and clear summary  
Presented to the human  
Without any code modification  
Without any additional action  
Allowing the human to decide how to continue  

---

This file is a protected system component.  
It is part of the official Docs-as-System methodology  
and must not be modified by end users.

© 2025 Tomer Kedem
