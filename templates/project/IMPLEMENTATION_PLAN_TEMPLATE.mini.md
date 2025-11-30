📘 Docs-as-System – mini edition  
⚠️ System File – TEMPLATE (Do Not Modify)

This file is part of the official Docs-as-System methodology.  
End users must not modify this file directly.  
To use it in a real project, copy this file into:  
`docs/project/IMPLEMENTATION_PLAN.mini.md`  
and edit the copy only.

---

<!--
REQUIRED_SECTIONS:
- Purpose of this Document
- Structure of the Plan
- Dividing Development into Stages
- Task Structure
- Task Name
- Task Objective
- Task Inputs
- Actions
- Required Output
- Task Distribution Between Developers
- Task Dependencies
- Task Completion Conditions
- Stage List Structure
- Stage Template Example
- Agent Workflow Inside Each Stage
- Writing Unit Tests for Each Task
- Testing Requirements
- Working in Parallel
- Full Example of Development Stages
- Stage Approval Process Before Merge
- Preparation for Pull Request
- Connection to the Log
- Stage Completion Rules
- Summary
-->

# Implementation Plan  
<!-- DO NOT REMOVE OR RENAME THIS HEADING -->
<!-- TEMPLATE_CONTENT: Replace this entire section with your project specific content, then delete this TEMPLATE_CONTENT line. -->

A logical and technical work plan that defines the development stages,  
the distribution of responsibility between developers,  
the structure of tasks,  
and the tests required at every stage.  

This document is the map that connects  
the Project Specification  
to the Architecture Blueprint  
and guides both the agent and the team  
on how to progress step by step.

Actual file location  
docs/project/IMPLEMENTATION_PLAN.mini.md

Creator  
A human with agent assistance

Approver  
A technical owner responsible for development planning

> Important Note  
> This is a template document.  
> All examples are for demonstration only.  
> Every project will have different stages, different tasks,  
> different dependency considerations,  
> and entirely different development requirements.  
> Every section must be adapted  
> to the structure and capability of the current system.

---

## Purpose of this Document  
<!-- DO NOT REMOVE OR RENAME THIS HEADING -->
<!-- TEMPLATE_CONTENT: Replace this entire section with your project specific content, then delete this TEMPLATE_CONTENT line. -->

To present a full and clear development plan that can  
• be divided among several developers in parallel  
• allow the agent to work in a safe and controlled way  
• prevent code conflicts  
• ensure that every task is testable  
• stay consistent with the logical specification and the architecture  

The plan helps everyone understand  
what is being built and when.

---

## Structure of the Plan  
<!-- DO NOT REMOVE OR RENAME THIS HEADING -->
<!-- TEMPLATE_CONTENT: Replace this entire section with your project specific content, then delete this TEMPLATE_CONTENT line. -->
<!-- TEMPLATE_CONTENT: Replace this entire section with your project specific content, then delete this TEMPLATE_CONTENT line. -->
The plan is built from three layers  
• Stages  
• Tasks  
• Tests  

**Stages**  
The high level development order of the system.  
Similar to floors in a construction plan.

**Tasks**  
The breakdown of each stage  
into small and well defined units  
that developers and the agent can execute clearly.

**Tests**  
The obligation to test every task,  
both logical checks performed by the agent  
and unit tests written by developers.

---

## Dividing Development into Stages  
<!-- DO NOT REMOVE OR RENAME THIS HEADING -->
<!-- TEMPLATE_CONTENT: Replace this entire section with your project specific content, then delete this TEMPLATE_CONTENT line. -->

Each stage is a large and isolated work unit  
that can be assigned to one or more developers  
without overriding or conflicting with other stages.

A stage definition includes  
• Stage name  
• Stage objective  
• Expected output  
• Dependencies on other stages  
• Files that may create shared work conflicts

Characteristics of a good stage  
• Self contained  
• Touches clearly defined areas of code  
• Allows parallel work across different stages  
• Includes only what is required for the current goal

**General example**  
Stage name  
Building an initial processing component  

Output  
A logical component that handles incoming data  

Dependencies  
Requires an existing basic project structure  

---

## Task Structure  
<!-- DO NOT REMOVE OR RENAME THIS HEADING -->
<!-- TEMPLATE_CONTENT: Replace this entire section with your project specific content, then delete this TEMPLATE_CONTENT line. -->

Each stage is broken down into clear and small tasks  
that developers and the agent can execute  
without unnecessary interpretation.

A task definition includes  
• Task name  
• Task objective  
• Inputs the task relies on  
• Detailed actions that must be performed  
• Required output  
• Unit tests  
• Logical tests  
• Completion conditions  

---

### Task Name  
<!-- DO NOT REMOVE OR RENAME THIS HEADING -->
<!-- TEMPLATE_CONTENT: Replace this entire section with your project specific content, then delete this TEMPLATE_CONTENT line. -->

A short and clear name  
that describes the main action.

**General examples**  
• Create basic processing module  
• Add list display  
• Create data validation service  

---

### Task Objective  
<!-- DO NOT REMOVE OR RENAME THIS HEADING -->
<!-- TEMPLATE_CONTENT: Replace this entire section with your project specific content, then delete this TEMPLATE_CONTENT line. -->

A short description  
of what the task is meant to achieve.

A good objective is  
• Clear  
• Focused  
• Leaves no room for interpretation  

---

### Task Inputs  
<!-- DO NOT REMOVE OR RENAME THIS HEADING -->
<!-- TEMPLATE_CONTENT: Replace this entire section with your project specific content, then delete this TEMPLATE_CONTENT line. -->

What the task depends on.  
The inputs must be clearly defined  
to prevent work based on incorrect assumptions.

Inputs may include  
• Specification documents  
• Existing files  
• Data structures defined in the blueprint  
• Output from other tasks  

---

### Actions  
<!-- DO NOT REMOVE OR RENAME THIS HEADING -->
<!-- TEMPLATE_CONTENT: Replace this entire section with your project specific content, then delete this TEMPLATE_CONTENT line. -->

A clear description of what must be done.

Actions include  
• Files that need to be edited  
• Files that need to be added  
• Logical checks that must be implemented  
• Expected structural changes  
• Constraints the task must respect  

The agent does not perform **any** action  
that does not appear here.

---

### Required Output  
<!-- DO NOT REMOVE OR RENAME THIS HEADING -->
<!-- TEMPLATE_CONTENT: Replace this entire section with your project specific content, then delete this TEMPLATE_CONTENT line. -->

The final result the task must deliver.

A large output signals  
that the task is not broken down enough.  
A tiny output signals  
that the task does not provide real value.

Outputs may include  
• A new file  
• A completed component  
• A passing unit test  
• A verified logical change  

---

## Task Distribution Between Developers  
<!-- DO NOT REMOVE OR RENAME THIS HEADING -->
<!-- TEMPLATE_CONTENT: Replace this entire section with your project specific content, then delete this TEMPLATE_CONTENT line. -->

The plan is structured so that tasks can be assigned  
to different developers in parallel  
without causing code conflicts.

Team work principles  
• Each task owns an isolated area of code  
• When tasks touch the same code area,  
  this must be noted as a dependency  
• Every developer works in a dedicated branch  
• Within each stage, there is a list of tasks  
  that can be performed in parallel safely  

Developers work independently  
but must maintain consistency  
with the logical specification  
and the architecture.

---

## Task Dependencies  
<!-- DO NOT REMOVE OR RENAME THIS HEADING -->
<!-- TEMPLATE_CONTENT: Replace this entire section with your project specific content, then delete this TEMPLATE_CONTENT line. -->

The plan must clearly define dependencies between tasks  
to prevent unnecessary work or logical conflicts.

Dependencies may include  
• One task requires the output of another  
• Two tasks modify the same file  
• A task interacts with logic created in a previous task  

Each dependency must specify  
• The sensitive area  
• What happens if the previous task was not completed  
• Whether parts of the task can still be executed

An agent that does not understand dependencies  
may cause damage.  
Therefore, documentation must be precise and unambiguous.

---

## Task Completion Conditions  
<!-- DO NOT REMOVE OR RENAME THIS HEADING -->
<!-- TEMPLATE_CONTENT: Replace this entire section with your project specific content, then delete this TEMPLATE_CONTENT line. -->

No task may be considered complete  
before all completion conditions are met.

Completion conditions include  
• All defined actions were executed  
• Code aligns with the logical specification  
• Structure aligns with the blueprint  
• All unit tests were defined and executed  
• A short entry was written to the log  
• A request for human approval was created  

The agent does not self approve.  
A human must always confirm completion.

---

## Stage List Structure  
<!-- DO NOT REMOVE OR RENAME THIS HEADING -->
<!-- TEMPLATE_CONTENT: Replace this entire section with your project specific content, then delete this TEMPLATE_CONTENT line. -->

The plan presents a clear and well defined work sequence  
that can be divided among multiple developers  
without code collisions.

Each stage includes  
• Stage name  
• Stage objective  
• Affected code areas  
• Dependencies on other stages  
• A list of tasks that can be executed in parallel  
• Tasks that must run sequentially  
• Constraints that must be respected  

A clear stage definition enables  
• Coordination between developers  
• Prevention of conflicts  
• Consistent development  
• Ordered agent operation

---

## Stage Template Example  
<!-- DO NOT REMOVE OR RENAME THIS HEADING -->
<!-- TEMPLATE_CONTENT: Replace this entire section with your project specific content, then delete this TEMPLATE_CONTENT line. -->

Stage name  
Building an initial processing component

Objective  
Create a logical component  
that receives data and performs basic processing

Affected code areas  
• Processing folder  
• Unit tests for this component  

Dependencies  
• A project skeleton must exist  
• Logical data structure must be defined in the blueprint  

Tasks in this stage  
• Create the file structure  
• Implement basic logic  
• Write unit tests  
• Connect tests to the appropriate runner  

Sequential tasks  
• Define file structure  
• Implement basic logic  
Only after these are complete  
other tasks may be performed.

Output  
A working initial processing component  
with all unit tests passing successfully

---

## Agent Workflow Inside Each Stage  
<!-- DO NOT REMOVE OR RENAME THIS HEADING -->
<!-- TEMPLATE_CONTENT: Replace this entire section with your project specific content, then delete this TEMPLATE_CONTENT line. -->

The agent follows a clear and predictable workflow  
that does not change between stages.

Agent workflow  
• Reads all relevant documents  
• Identifies the current stage  
• Identifies the open tasks  
• Executes the current task exactly as defined  
• Runs unit tests  
• Performs a logical validation against the documents  
• Writes a short entry in the log  
• Prepares a result for human approval  

The agent does not skip tasks  
and does not work without a guiding document.

---

## Writing Unit Tests for Each Task  
<!-- DO NOT REMOVE OR RENAME THIS HEADING -->
<!-- TEMPLATE_CONTENT: Replace this entire section with your project specific content, then delete this TEMPLATE_CONTENT line. -->

Every task must include predefined unit tests.  
This applies to both server side and client side,  
as well as infrastructure or internal services.

A unit test definition includes  
• What is being tested  
• Why it is tested  
• Positive scenarios  
• Failure scenarios  
• Edge conditions  
• Expected results  

Server side unit tests  
• Testing logical functions  
• Testing data processing  
• Testing behavior across multiple input states  

Client side unit tests  
• Testing component actions  
• Testing the display according to data state  
• Testing exceptional interface states  

---

## Testing Requirements  
<!-- DO NOT REMOVE OR RENAME THIS HEADING -->
<!-- TEMPLATE_CONTENT: Replace this entire section with your project specific content, then delete this TEMPLATE_CONTENT line. -->

The plan states clearly and without exceptions  
• No task without unit tests  
• No stage without complete testing  
• No commit without tests that pass  
• No progression to the next stage without test approval  

The human approves  
the agent executes  
and both sides are responsible  
for testing depth and quality.

---

## Working in Parallel  
<!-- DO NOT REMOVE OR RENAME THIS HEADING -->
<!-- TEMPLATE_CONTENT: Replace this entire section with your project specific content, then delete this TEMPLATE_CONTENT line. -->

To work with multiple developers in parallel,  
each stage is broken into tasks  
that do not touch shared code areas  
without explicit coordination.

Principles for parallel work  
• Each task touches clearly defined files or folders  
• Conflicting tasks are marked as requiring coordination  
• Each developer works in a dedicated branch  
• The agent does not write to files  
  that were not defined in the stage  
• Tests and logical rules preserve stability  
  across all parts of the system  

The plan is designed in advance  
so that it can be distributed  
across multiple people  
without creating chaos.

---

## Full Example of Development Stages  
<!-- DO NOT REMOVE OR RENAME THIS HEADING -->
<!-- TEMPLATE_CONTENT: Replace this entire section with your project specific content, then delete this TEMPLATE_CONTENT line. -->

This example demonstrates  
what a real stage may look like.  
It is only an example.  
Your system will look different.

Stage name  
Building a basic ingestion component

Objective  
Allow the system to receive external data  
in an organized and predictable way  
without applying business logic

Affected code areas  
• Ingestion folder  
• Unit tests for this component  

Dependencies  
• Initial data structure defined in the blueprint  
• A working project skeleton  

Tasks in this stage  

**Task**  
Create the basic file structure  

**Input**  
Project folder, entity structure  

**Action**  
• Create a main component file  
• Define the ingestion interface  
• Add initial logical structure  

**Output**  
• A new component file  

**Unit tests**  
• Component is created  
• Component receives valid input  

---

**Task**  
Implement the main action in the component  

**Input**  
Entity definitions from the blueprint  

**Action**  
• Create a function that accepts input  
• Perform basic validation  
• Return a logical result structure  

**Output**  
• A consistent result  

**Unit tests**  
• Valid input  
• Missing input  
• Duplicate input  

Stage output  
• A complete ingestion component  
• A full set of passing unit tests  
• Documentation written to the log

---

## Stage Approval Process Before Merge  
<!-- DO NOT REMOVE OR RENAME THIS HEADING -->
<!-- TEMPLATE_CONTENT: Replace this entire section with your project specific content, then delete this TEMPLATE_CONTENT line. -->

Before requesting to merge code into the main branch,  
a complete approval workflow must be followed.

The approval process includes  
• The agent performs logical validations  
• The agent runs all unit tests  
• The developer runs additional tests if needed  
• A short log entry is created  
• A request for human approval is opened  
• No merge may occur before approval  
  from a responsible technical owner  

A human does not approve based on intuition.  
A human approves based on alignment with the documents.

---

## Preparation for Pull Request  
<!-- DO NOT REMOVE OR RENAME THIS HEADING -->
<!-- TEMPLATE_CONTENT: Replace this entire section with your project specific content, then delete this TEMPLATE_CONTENT line. -->

When a stage is completed,  
a structured preparation process  
is required before opening a pull request.

The preparation includes  
• Ensuring no files are unsaved  
• Ensuring the branch is up to date  
• Ensuring all tasks are marked as complete  
• Writing a short development note  
• Creating the pull request  
• Waiting for human review  

The pull request is the closure  
of the development cycle,  
not its beginning.

---

## Connection to the Log  
<!-- DO NOT REMOVE OR RENAME THIS HEADING -->
<!-- TEMPLATE_CONTENT: Replace this entire section with your project specific content, then delete this TEMPLATE_CONTENT line. -->

Every stage leaves behind  
a clear and unambiguous log entry.

The log entry includes  
• Stage name  
• Task performed  
• Files that changed  
• Main outcome  
• Whether additional tests were required  
• Who approved  

A good log creates a history  
that the agent can learn from  
in the next cycle.

---

## Stage Completion Rules  
<!-- DO NOT REMOVE OR RENAME THIS HEADING -->
<!-- TEMPLATE_CONTENT: Replace this entire section with your project specific content, then delete this TEMPLATE_CONTENT line. -->

A stage is considered complete only when  
• No tasks are left open  
• No test failures remain  
• No gap exists between implementation and blueprint  
• The log is updated and complete  
• The code is approved  
• The pull request has been opened  

You cannot skip a stage.  
You cannot skip testing.  
You cannot close a stage  
without documentation.

---

## Summary  
<!-- DO NOT REMOVE OR RENAME THIS HEADING -->
<!-- TEMPLATE_CONTENT: Replace this entire section with your project specific content, then delete this TEMPLATE_CONTENT line. -->

Implementation Plan mini  
is a real working document.  

It defines the work order,  
describes the tasks,  
enables structured distribution  
across multiple developers,  
and gives the agent  
a safe and predictable framework  
to operate within.

The document ensures  
• Every task is clear  
• Every development step is testable  
• Each stage is as isolated as possible  
• Team work remains stable under load  
• The agent never acts  
  in contradiction to the documents  

This is a professional template  
capable of supporting a real project  
in a small team,  
a large team,  
or a hybrid workflow  
between human and agent.

---

This is a protected template file  
and must not be edited directly inside a project.  
To customize it, create or update:  
`docs/project/IMPLEMENTATION_PLAN.mini.md`

© 2025 Tomer Kedem
