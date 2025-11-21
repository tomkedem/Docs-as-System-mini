📘 Docs-as-System – mini edition  
⚠️ System File  

This file is part of the official Docs-as-System methodology.  
End users must not modify this file.  
Update this file only through the methodology’s source repository.

---

# Main Orchestration Prompt  
Full Development Cycle Controller

## Purpose  
Execute a full structured development cycle  
using the dedicated prompts of the methodology  
in complete alignment with the project documents,  
agent policy,  
and human policy.

This prompt does not perform the actions itself.  
It orchestrates the cycle by activating the correct prompts  
in the correct order  
without skipping any stage.

---

## Relevant Files  

### Project Documents  
• docs/project/BUSINESS_REQUIREMENTS.mini.md  
• docs/project/PROJECT_SPEC.mini.md  
• docs/project/IMPLEMENTATION_PLAN.mini.md  
• docs/project/ARCHITECTURE_BLUEPRINT.mini.md  

### Behavioral Documents  
• docs/agent/AGENT_OPERATIONAL_POLICY.mini.md  
• docs/agent/HUMAN_OPERATIONAL_POLICY.mini.md  

### Configuration  
• docs/agent/AGENT_CONFIG.mini.yaml  

### Live Log  
• docs/logs/IMPLEMENTATION_LOG.mini.md  

---

## Core Operating Principle  

• Every action must be executed through its dedicated prompt  
• No logic may be invented outside the prompts  
• No stage may be skipped  
• No new workflow may be created  
• No Git actions may be performed manually  
  Only through the official scripts and prompts of the methodology  

---

# Full Development Loop  

## 1. Run the Context Understanding Prompt  
prompt_understand_context.mini.md  

• Load all relevant documents  
• Review the flow  
• Understand boundaries  
• Stop if any uncertainty exists  

---

## 2. Run the Step Preparation Prompt  
prompt_prepare_step.mini.md  

• Identify the active step  
• Identify all tasks inside the step  
• Review dependencies  
• Confirm the step is ready for execution  

---

## 3. Run the Execute Task Prompt  
prompt_execute_task.mini.md  

• Perform the smallest required change  
• Modify only allowed files  
• Follow all project documents  
• Add or update unit tests as required  
• Ensure accurate completion of the task  

---

## 4. Run the Self Check Prompt  
prompt_self_check.mini.md  

• Verify no deviation from project documents  
• Verify all tests pass  
• Verify no unrelated changes exist  
• Verify the log file is ready for update  

---

## 5. Run the Update Log Prompt  
prompt_update_log.mini.md  

• Read the template  
  docs/project/templates/log/IMPLEMENTATION_LOG_TEMPLATE.mini.md  
• Read the live log  
  docs/logs/IMPLEMENTATION_LOG.mini.md  
• Create a new entry based strictly on the template  
• Append it to the log  

---

## 6. Run the Prepare Commit Prompt  
prompt_prepare_commit.mini.md  

• This includes the commit execution layer  
• Commit must be created using  
  docs/automation/STAGE_AND_COMMIT.sh  
• Validate full alignment between documents,  
  log entry,  
  and modified files  

---

## 7. Run the Prepare Pull Request Prompt  
prompt_prepare_pull_request.mini.md  

• This includes the PR execution layer  
• PR must be opened using  
  docs/automation/OPEN_PULL_REQUEST.sh  
• The prompt constructs  
  PR title,  
  PR body,  
  and required documentation  
• No PR may be opened in any other way  

---

# Immediate Stop Conditions  

Stop the process immediately when:

• Documents are inconsistent  
• A required document is missing  
• The task is unclear  
• Any test fails  
• A file was changed outside the task scope  
• Human approval is required  
• Manual changes were detected that do not belong to the current cycle  

Whenever this happens:  
Stop  
Summarize your current understanding  
Ask for human guidance before continuing  

---

# Handling Manual Human Changes  

If manual changes are detected that were not part of the current cycle:

Stop immediately  
Activate:

1. prompt_human_edit_mode.mini.md  
2. prompt_analyze_human_changes.mini.md  

Follow all rules in the behavior policies  
Do not return to the normal workflow  
until the human explicitly approves continuation  

---

# Handling Uncertainty  

If there is doubt regarding:  
• Expected behavior  
• Task definition  
• Missing information  

Stop the process  
Produce a short summary of the current understanding  
Identify missing information  
Request clarification  

No action may continue without full clarity  

---

# Handling Errors During Task Execution  

If the task produces results that differ from expectations:

• Read the step documents again  
• Identify the cause of the deviation  
• Check whether the issue is:  
  – A non task related change  
  – Missing information  
  – A deviation from the Blueprint  
• Stop the task  
• Ask for human guidance  
• After receiving guidance, return to the Execute Task prompt  

---

# Starting the Next Cycle  

After the commit is completed  
and the pull request is created:

• Move to the next task in the same step  
or  
• Close the step if all tasks were completed  

Every development cycle must include:  
• Context understanding  
• Step preparation  
• Task execution  
• Self check  
• Log update  
• Commit preparation  
• Pull request preparation  

---

# Summary  

This file orchestrates the entire development cycle  
of the Docs-as-System mini methodology.  

It does not execute tasks directly  
but delegates all execution  
to the dedicated prompts.  

Every action must be done through its correct prompt  
No stages may be skipped  
No additional steps may be invented  
No operations may be performed outside the methodology  

Strict use of this orchestration file  
ensures a stable, clear, and controlled development process  
that correctly integrates human and agent  
through a document driven workflow.

---

This file is a protected system component.  
It is part of the official Docs-as-System methodology  
and must not be modified by end users.

© 2025 Tomer Kedem
