📘 Docs-as-System mini edition  
⚠️ System File – Validation Prompt (Do Not Modify)

This file is part of the official Docs-as-System methodology.  
End users must not modify this file directly.  
Update this file only through the methodology’s source repository.

---

# Prompt: Generate Summary  
Create a clear human friendly summary based on the implementation log.

## Goal  
Produce a readable summary of completed work.  
The summary must use the project’s chosen language,  
even though the implementation log itself is always written in English.

## Required Inputs  

• The full content of `docs/logs/IMPLEMENTATION_LOG.mini.md`  
• The project language from `docs/agent/AGENT_CONFIG.mini.yaml`  
  taken from the field `metadata.language.docs`  
• Optional filters provided by the human, for example  
  date range, stage, or task name

If `metadata.language.docs` is missing or invalid,  
default to English for the summary.

## What to Do  

1. Read the entire implementation log.  
2. Filter the entries according to the human request  
   (date range, specific stage, specific task, or “everything”).  
3. Build one coherent summary that explains:  
   • What actions were completed  
   • Why they were performed  
   • Which files were affected  
   • What impact they have on the system  
   • Any relevant notes added by the human  

The summary must be simple, readable and short,  
and it must be written in the project language defined in `metadata.language.docs`.

If the human explicitly asks to save the summary to a file,  
write it under `docs/logs/summaries/`  
using a clear file name that includes the language code  
for example:  

`summary_<date>_<language>.md`

## Language Rules  

• The implementation log is always written in English  
• The summary must be written in the language from `metadata.language.docs`  
• If `metadata.language.docs` is not specified or not supported, use English  
• Keep a clear, human tone, not robotic  
• Do not translate internal identifiers such as file paths, class names or function names

## Output Format  

The output must be a clean Markdown summary:

```md
# Summary of Completed Work  
Period: <date range or task range>

## Highlights  
• <short point>  
• <short point>  

## Details  
- <clear explanation>  
- <clear explanation>  

## Impact  
- <what changed>  
- <what this affects>  

## Notes  
(Optional – only if relevant)

Do not include internal system messages.  
Do not invent log entries.  
Base everything strictly on the actual implementation log.

## When to Stop

Stop immediately and return a short explanation if:

• The log file is missing  
• There are no matching entries for the requested filter  
• The project language cannot be determined  
  and using English as fallback also fails for any reason

---

This file is a protected system component.  
It is part of the official Docs-as-System methodology  
and must not be modified by end users.

© 2025 Tomer Kedem
