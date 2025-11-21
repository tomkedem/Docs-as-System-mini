# Docs-as-System mini edition – Quick Start Guide

Docs-as-System mini edition is a simple and practical workflow that helps you keep your development clear, consistent, and predictable when working with AI assistants.

You write clean project documents.  
The agent follows them step by step.  
No surprises. No guessing. No chaos.

This guide gives you everything you need to start working with the mini edition in minutes.

---

## 1. What this method gives you

- A clean and consistent workflow  
- A simple structure that keeps projects understandable  
- A predictable process for using AI safely  
- A development rhythm that stays clear over time  

No heavy methodology.  
No complex rules.  
Just a lightweight and reliable workflow you can trust.

---

## 2. Initial setup

Before writing any code, create these four project documents:

- `BUSINESS_REQUIREMENTS.mini.md`  
- `PROJECT_SPEC.mini.md`  
- `IMPLEMENTATION_PLAN.mini.md`  
- `ARCHITECTURE_BLUEPRINT.mini.md`

You can prepare them with help from any AI assistant.

Then open:

`docs/agent/AGENT_CONFIG.mini.yaml`

Set your project language:

```yaml
projectLanguage: "en"
```

That is all you need before starting real work.

---

## 3. Daily workflow (7 simple steps)

Use the prompts in `docs/prompts/PROMPTS_LIBRARY` for every task.

### 1. Understand Context  
The agent reads the project documents and understands what is needed.

### 2. Prepare Step  
The agent plans the exact work it will perform.

### 3. Execute Task  
The agent writes or updates the code according to the plan.

### 4. Self Check  
The agent verifies the work matches the documents and rules.

### 5. Update Log  
One short entry per task, always written in English.

### 6. Prepare Commit  
Creates a clean commit using the official script.

### 7. Prepare Pull Request  
Creates a draft PR based on the log and documents.

This flow keeps your project consistent, clean, and easy to follow.

---

## 4. A real example

**Task:**  
Add a `phoneNumber` field to the User model.

**The full workflow:**

- Run **Understand Context**  
- Run **Prepare Step**  
- Follow the plan  
- Run **Execute Task**  
- Run **Self Check**  
- Run **Update Log**  
- Run **Prepare Commit**  
- Run **Prepare Pull Request**

After one or two tasks, this flow becomes natural.

---

## 5. Manual coding (when you write code yourself)

You can always write code manually.  
Just do it safely:

1. Click **Start manual coding**  
2. Make your changes  
3. Click **Finish manual coding**

The agent will analyze the changes, update the log if needed, and stay aligned with your documents.

---

## 6. What you can do

- Edit code inside allowed folders  
- Update the four project documents  
- Use the prompts for every step  
- Switch between manual and agent-driven work  

---

## 7. What you must not do

- Edit system files in `docs/`  
- Modify any prompt file  
- Run Git commands manually  
- Edit protected paths  
- Change architecture without updating documents  

These rules keep the workflow stable and predictable.

---

## 8. When is a task complete?

A task is complete when:

- Self Check passes  
- A log entry is added  
- A commit is prepared  
- A PR is created  
- A human review is requested  

---

## 9. Mini cheat sheet

```plaintext
Understand → Prepare → Execute
↓
Self Check → Update Log
↓
Commit → Pull Request
```

Stay inside this loop and your project will remain clear, stable, and easy to maintain.

