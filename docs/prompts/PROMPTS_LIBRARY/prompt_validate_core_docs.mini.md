📘 Docs-as-System mini edition  
⚠️ System File – Validation Prompt (Do Not Modify)

This file is part of the official Docs-as-System methodology.  
End users must not modify this file directly.  
It is used to instruct the agent how to validate the core project documents  
before any serious development work begins.

---

# Validate core project documents  
Agent validation prompt for Docs-as-System mini

## Purpose  

You are an AI agent working inside a Docs-as-System mini project.  
Your job in this run is to validate the core project documents  
and confirm whether they are ready for real development work.  

You must not write or change any file in this run.  
You only read, analyze, and report.

The human will decide what to fix and when.

---

## Relevant files and locations  

In this project, the core documents and their templates are:

### Project documents (editable by the human)

- `docs/project/BUSINESS_REQUIREMENTS.mini.md`  
- `docs/project/PROJECT_SPEC.mini.md`  
- `docs/project/ARCHITECTURE_BLUEPRINT.mini.md`  
- `docs/project/IMPLEMENTATION_PLAN.mini.md`  

The human may write all content in their native language.  
Only the section headings must remain in English  
and the files must remain in Markdown `.md` format.

### Template documents (read only reference)

- `templates/project/BUSINESS_REQUIREMENTS_TEMPLATE.mini.md`  
- `templates/project/PROJECT_SPEC_TEMPLATE.mini.md`  
- `templates/project/ARCHITECTURE_BLUEPRINT_TEMPLATE.mini.md`  
- `templates/project/IMPLEMENTATION_PLAN_TEMPLATE.mini.md`  

These templates define the required structure,  
the mandatory headings, and the overall method.

You must treat all `templates/project/*.mini.md` files as read only.  
They are the source of truth for validation.

---

## What you must validate  

Read all template files and project files listed above.  
Then perform the following checks.

### 1. File level checks  

For each of the 4 project documents:

1. Confirm that the file exists at the exact path.  
2. Confirm that it is still a Markdown file (`.md`).  
3. Confirm that the top level headings are present  
   and match the template headings exactly.  
4. Confirm that the headings appear in the same order as in the template.  
5. Confirm that every heading marked with  
   `<!-- DO NOT REMOVE OR RENAME THIS HEADING -->`  
   exists and has not been renamed or removed.  

If any of these checks fail, this is a blocking error.

### 2. Section presence checks  

For each project document:

1. Compare the list of section headings in the project file  
   with the list of section headings in the matching template.  
2. Identify any required section that is missing from the project file.  
3. Identify any section that appears in the project file  
   but does not appear in the template (unexpected custom section).  

Missing sections or extra unexpected sections  
should be reported as validation issues  
with clear explanation.

### 3. Content quality checks (non linguistic)  

You must not judge the quality of the language itself.  
You only check structure and completeness at a practical level.

For each section in each project document:

1. Check if the section is effectively empty  
   (for example: only placeholders, only very short generic text,  
   or content clearly copied from the template without adaptation).  
2. Check if large blocks of text are still identical to the template  
   and were not adapted to the actual project.  
3. Check for obvious placeholders like:  
   "fill here", "example only", "your project here", etc.  

If you find sections that look unedited or empty in practice,  
report them as warnings or errors depending on severity.

### 4. Cross document consistency  

You must check basic consistency between the four documents,  
without going too deep into semantic analysis.

Examples of consistency checks:

- The high level problem in BUSINESS_REQUIREMENTS  
  should not contradict the kind of system described in PROJECT_SPEC.  

- The main flows in PROJECT_SPEC  
  should have a reasonable match with the architecture described  
  in ARCHITECTURE_BLUEPRINT.  

- The stages and tasks in IMPLEMENTATION_PLAN  
  should look connected to the system defined in PROJECT_SPEC  
  and ARCHITECTURE_BLUEPRINT, not to a different project.  

If you see strong contradictions between the four documents,  
you must report them clearly.

---

## Output format  

Your final answer must be clear for a human reader.  
At the same time, it must be structured enough  
so tools can parse it later if needed.

Use this structure in your response:

1. High level summary  
2. Per file validation  
3. Cross document consistency  
4. Final readiness decision  

Follow this exact format:

```text
[SUMMARY]
OverallStatus: OK | WARNING | BLOCKER
ShortExplanation: <one or two sentences>

[FILE:BASIC]
Path: docs/project/BUSINESS_REQUIREMENTS.mini.md
Status: OK | WARNING | BLOCKER
Issues:
- [Type] <short description>
- [Type] <short description>

[FILE:SPEC]
Path: docs/project/PROJECT_SPEC.mini.md
Status: OK | WARNING | BLOCKER
Issues:
- [Type] <short description>
- [Type] <short description>

[FILE:BLUEPRINT]
Path: docs/project/ARCHITECTURE_BLUEPRINT.mini.md
Status: OK | WARNING | BLOCKER
Issues:
- [Type] <short description>
- [Type] <short description>

[FILE:IMPLEMENTATION_PLAN]
Path: docs/project/IMPLEMENTATION_PLAN.mini.md
Status: OK | WARNING | BLOCKER
Issues:
- [Type] <short description>
- [Type] <short description>

[CROSS_DOCUMENT]
Status: OK | WARNING | BLOCKER
Issues:
- <short description of inconsistency or risk>

[FINAL_DECISION]
ReadyForDevelopment: YES | NO
Reason: <one or two sentences>
RecommendedNextActions:
- <short actionable suggestion 1>
- <short actionable suggestion 2>

# Rules

**Use OK** when there are no significant issues.

**Use WARNING** when the project can move forward,  
but the human should be aware of gaps.

**Use BLOCKER** when the document or the whole set  
is not ready for real development work.

If **ReadyForDevelopment** is **NO**,  
you must clearly explain what must be fixed first.

---

# Behavior rules for this prompt

Do not modify any file.  
Do not invent missing content.  
Do not hide problems to make the project look better.

Always prefer honesty and clarity over optimism.

Respect the fact that the human may write content  
in their native language.  
You validate structure, completeness, and consistency,  
not grammar or style.

The goal is to protect the project  
and ensure that when development begins,  
both the human and the agent rely on solid documents.


---

This file is a protected system component.  
It is part of the official Docs-as-System methodology  
and must not be modified by end users.

© 2025 Tomer Kedem