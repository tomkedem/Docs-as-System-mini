📘 Docs-as-System mini edition  
⚠️ System File – Validation Prompt (Do Not Modify)

This file is part of the official Docs-as-System methodology.  
End users must not modify this file directly.  
Update this file only through the methodology’s source repository.

---

# Analyze Human Changes

## Purpose  
Allow the agent to analyze manual changes made by a human  
without fixing anything  
without completing missing parts  
and without automatic continuation  
while fully respecting all policy rules.

This prompt runs only after  
prompt_human_edit_mode.mini.md  
and only under explicit human instruction.

## Relevant Files  

docs/agent/HUMAN_OPERATIONAL_POLICY.mini.md  
docs/agent/AGENT_OPERATIONAL_POLICY.mini.md  
docs/project/PROJECT_SPEC.mini.md  
docs/project/ARCHITECTURE_BLUEPRINT.mini.md  
docs/logs/IMPLEMENTATION_LOG.mini.md  

---

## Instructions  

Read all the files manually edited by the human  
Identify every difference between them  
and their original versions  

Cross check these differences against the core project documents:  
• docs/project/PROJECT_SPEC.mini.md  
• docs/project/ARCHITECTURE_BLUEPRINT.mini.md  
• docs/project/IMPLEMENTATION_PLAN.mini.md  
• docs/logs/IMPLEMENTATION_LOG.mini.md (latest entry only)  

Read the content of each of these files  
Determine how the human change affects them  
Mark alignments  
Mark contradictions  
Mark any point that may break the work cycle  

Prepare a professional and clear analysis containing:  
• What changes were made  
• Whether the change aligns with project documents  
• Whether there is a contradiction with any document  
• Whether the change belongs to the active task  
• Whether the change affects dependencies  
• Whether documents require updates  
• Whether existing tests cover the new behavior  

---

## Boundaries  

Do not fix anything  
Do not complete code  
Do not create new files  
Do not update the log  
Do not update documents  
Do not suggest refactor  
Do not propose merges  
Do not commit  
Do not push  

The purpose is analysis only  
Not action  

---

## Presenting the Situation to the Human  

Prepare a clean and clear summary  
Present to the human:  
• A full picture of what changed  
• Risk evaluation  
• Identification of conflicts  
• Parts that need instruction  
• Questions the agent must ask before continuing  

The development cycle must not continue  
until the human provides a clear decision  

---

## Continuation Conditions  

The human chooses one of the following:  
• Approve the change as is  
• Request additional manual edits  
• Request document updates  
• Open a new task  
• Return to the regular development cycle  
• Pause the process until further clarification  

---

## Expected Output  

A concise, professional analysis  
Based strictly on project documents  
Presented to the human  
Without code modification  
Without automatic continuation  
And without performing any additional action  

---

This file is a protected system component.  
It is part of the official Docs-as-System methodology  
and must not be modified by end users.

© 2025 Tomer Kedem
