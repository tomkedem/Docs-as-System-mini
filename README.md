# Docs-as-System mini edition

Docs-as-System mini is a small and practical workflow that helps you keep your development clean and predictable when working with AI assistants.

Instead of guessing why a file changed or what the agent just did, you work with clear documents, a simple structure, and a safe step-by-step flow.

No heavy processes.  
No complicated rules.  
Just a clean and simple way to work with AI.

Here is everything you need to start working with the Docs-as-System mini edition.

---

## Why this method exists

Modern AI tools are fast and powerful, but they can easily create uncertainty:

- Who changed this file  
- Why did the agent refactor the module  
- Which task does this commit belong to  

Without structure, things drift quickly.

Docs-as-System mini brings structure back.  
It creates a clean and predictable workflow without slowing you down.

---

## How it works

Every task goes through a short sequence of steps, each powered by a dedicated prompt:

1. Understand Context  
2. Prepare Step  
3. Execute Task  
4. Self Check  
5. Update Log  
6. Prepare Commit  
7. Prepare Pull Request  

All Git actions are performed through the official automation scripts only.  
This prevents mistakes and ensures every change is documented.

---

## Folder structure

```plaintext
docs/
agent/ Agent and human policies
automation/ Git automation scripts
logs/ Task log and summaries
project/ Requirements, spec, plan and architecture
prompts/ The full workflow prompts
```


Each folder has one clear purpose.  
Even after weeks away from the project, everything is easy to understand.

---

## What you gain

- Clarity  
- Consistency  
- Safe collaboration with AI  
- A clean history of what changed and why  
- A workflow that works for solo developers and teams  

---

## Getting started

1. Clone the repository  
2. Fill the four project documents under `docs/project`  
3. Work only through the official prompts  
4. Use the Git scripts for staging, committing, and opening pull requests  

Within a day or two, the workflow becomes natural.  
The agent behaves predictably.  
Development becomes calmer and easier to manage.

---

## Quick Start Guide

For a short and developer friendly explanation of the daily workflow, see:

`QUICK_START_GUIDE.md`
