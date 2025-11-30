📘 Docs-as-System – mini edition  
⚠️ System File – TEMPLATE (Do Not Modify)

This file is part of the official Docs-as-System methodology.  
End users must not modify this file directly.  
To create a project-specific version, copy this file into:  
`docs/project/BUSINESS_REQUIREMENTS.mini.md`  
and edit the copy only.

---

<!--
REQUIRED_SECTIONS:
- Purpose of this Document
- Business Summary
- The Business Problem
- Business Opportunity
- Business Objectives
- Success Metrics
- Project Scope
- Target Audience
- Main Data Flows
- Critical Events
- Formal Business Requirements
- Business Constraints
- Fundamental Assumptions
- Business Risks
- Impact of Failure
- Guiding Principles for the Solution
- Rejected Business Alternatives
- Consolidated Summary
- Final Principle
-->

# Business Requirements  
<!-- DO NOT REMOVE OR RENAME THIS HEADING -->
<!-- TEMPLATE_CONTENT: Replace this entire section with your project specific content, then delete this TEMPLATE_CONTENT line. -->

A professional business document that defines the purpose of the project,  
its business context, the expectations from the system,  
and the criteria that determine whether the solution is considered successful.

Actual file location in a project  
`docs/project/BUSINESS_REQUIREMENTS.mini.md`

Creator  
A human with writing assistance from the agent

Approver  
A business stakeholder or product manager

> Important Note  
> This is a template document.  
> All examples in this file are for demonstration only.  
> Every project has a different pain point, different users,  
> a different opportunity, and sometimes completely different goals.  
> Every section must be adapted to the real context of the current project.

---

## Purpose of this Document  
<!-- DO NOT REMOVE OR RENAME THIS HEADING -->
<!-- TEMPLATE_CONTENT: Replace this entire section with your project specific content, then delete this TEMPLATE_CONTENT line. -->
To provide a clear business framework  
from which all logical and technical specifications are derived.  

This document is not meant to be marketing oriented  
or ceremonial in any way.  
It is a stable and binding foundation for development.

It defines:  
• What the problem is  
• What the opportunity is  
• What must be achieved  
• What will be considered success  

---

## Business Summary  
<!-- DO NOT REMOVE OR RENAME THIS HEADING -->
<!-- TEMPLATE_CONTENT: Replace this entire section with your project specific content, then delete this TEMPLATE_CONTENT line. -->
A short paragraph that explains in simple words  
why the solution is needed.

Example  
The system enables near real time processing and display of data,  
and significantly reduces manual errors  
and inconsistency between systems.

---

## The Business Problem  
<!-- DO NOT REMOVE OR RENAME THIS HEADING -->
<!-- TEMPLATE_CONTENT: Replace this entire section with your project specific content, then delete this TEMPLATE_CONTENT line. -->
The pain the system is meant to solve.

• Slow or manual processes  
• Inconsistent information across systems  
• Operational overload  
• Difficulty identifying exceptions in time  

The problem must be measurable  
and free from vague or generic language.

---

## Business Opportunity  
<!-- DO NOT REMOVE OR RENAME THIS HEADING -->
<!-- TEMPLATE_CONTENT: Replace this entire section with your project specific content, then delete this TEMPLATE_CONTENT line. -->
Beyond solving the problem,  
the system creates real value:

• Faster response times  
• Automation of processes that are currently manual  
• Improved long term data quality  
• Reduction of human errors  
• Operational transparency and better oversight  

The opportunity explains  
why it makes sense to invest in the system.

---

## Business Objectives  
<!-- DO NOT REMOVE OR RENAME THIS HEADING -->
<!-- TEMPLATE_CONTENT: Replace this entire section with your project specific content, then delete this TEMPLATE_CONTENT line. -->
Clear goals the system must achieve.

• Short response times in core scenarios  
• Reduced load on operational teams  
• Improved data accuracy across systems  
• Ability to detect exceptions quickly  
• A clear and stable user experience  

Each objective must be directly connected  
to the problem and the opportunity.

---

## Success Metrics  
<!-- DO NOT REMOVE OR RENAME THIS HEADING -->
<!-- TEMPLATE_CONTENT: Replace this entire section with your project specific content, then delete this TEMPLATE_CONTENT line. -->
Quantitative indicators that allow the team  
to determine whether the system is truly successful.

• Average response time under normal load  
• Maximum allowed error rate in a critical process  
• Minimum availability over a calendar month  
• Long term data accuracy between systems  
• Reduction in manual actions  

These metrics flow directly  
into the logical and technical specification.

---

## Project Scope  
<!-- DO NOT REMOVE OR RENAME THIS HEADING -->
<!-- TEMPLATE_CONTENT: Replace this entire section with your project specific content, then delete this TEMPLATE_CONTENT line. -->
A definition of what the system includes  
and what it intentionally does not include.

In scope  
• Receiving data from defined business sources  
• Processing and normalizing information consistently  
• Displaying truth based information  
• Handling key business events  
• Alerting on exceptional conditions  

Out of scope  
• Upgrading external systems  
• Future features not required for the first version  
• Capabilities unrelated to direct business value  

---

## Target Audience  
<!-- DO NOT REMOVE OR RENAME THIS HEADING -->
<!-- TEMPLATE_CONTENT: Replace this entire section with your project specific content, then delete this TEMPLATE_CONTENT line. -->
Who is directly affected by the system  
and why it matters to them.

Direct users  
• Operational staff  
• Shift managers  
• Service representatives  

Indirect users  
• Management  
• End customers (if relevant)  
• Integration systems  

Stakeholders  
• Business owner  
• Product manager  
• QA team

---

## Main Data Flows  
<!-- DO NOT REMOVE OR RENAME THIS HEADING -->
<!-- TEMPLATE_CONTENT: Replace this entire section with your project specific content, then delete this TEMPLATE_CONTENT line. -->
At the business stage we do not discuss technology,  
but we do define the two most important things:

• What enters the system  
• What leaves the system  

The description includes:  
• Main data sources  
• What happens to the data after it arrives  
• What must be displayed, synchronized or logged  
• Required level of freshness  

General example only  
An external source sends an update  
about an operational status.  
The system receives it, validates it,  
and updates a screen or an internal process.

---

## Critical Events  
<!-- DO NOT REMOVE OR RENAME THIS HEADING -->
<!-- TEMPLATE_CONTENT: Replace this entire section with your project specific content, then delete this TEMPLATE_CONTENT line. -->
Events that must be handled  
in a predictable and well defined way.

• A new event enters the system  
• Delay or failure in a data source  
• Missing critical information  
• Duplicate data  
• Invalid information  

These events flow directly  
into the logical specification (PROJECT_SPEC).

---

## Formal Business Requirements  
<!-- DO NOT REMOVE OR RENAME THIS HEADING -->
<!-- TEMPLATE_CONTENT: Replace this entire section with your project specific content, then delete this TEMPLATE_CONTENT line. -->
A list of requirements that define  
what the system must be able to do.

• Update information from the last five minutes  
• Alert on exceptional conditions  
• Preserve consistency across all relevant screens  
• Allow a basic flow even when an external system is unavailable  

---

## Business Constraints  
<!-- DO NOT REMOVE OR RENAME THIS HEADING -->
<!-- TEMPLATE_CONTENT: Replace this entire section with your project specific content, then delete this TEMPLATE_CONTENT line. -->
Limitations the system must respect.

• Dependencies on an external system  
• Security or compliance requirements  
• Operational limitations  
• Budget or resource constraints  
• Network availability assumptions  

---

## Fundamental Assumptions  
<!-- DO NOT REMOVE OR RENAME THIS HEADING -->
<!-- TEMPLATE_CONTENT: Replace this entire section with your project specific content, then delete this TEMPLATE_CONTENT line. -->
Assumptions used by the logical  
and technical documents.

• Each critical data source is available most of the time  
• Users follow the intended process flow  
• Data volume is known in advance  
• Basic technical support is available  

---

## Business Risks  
<!-- DO NOT REMOVE OR RENAME THIS HEADING -->
<!-- TEMPLATE_CONTENT: Replace this entire section with your project specific content, then delete this TEMPLATE_CONTENT line. -->
A focused list of risks that may impact  
the system’s quality or the user experience.

• Unusual load causing slow response  
• Unavailability of a critical data source  
• Misunderstanding of a business process  
• Entry of invalid information  
• Inconsistency between sources of truth  

---

## Impact of Failure  
<!-- DO NOT REMOVE OR RENAME THIS HEADING -->
<!-- TEMPLATE_CONTENT: Replace this entire section with your project specific content, then delete this TEMPLATE_CONTENT line. -->
A clear explanation of the business impact  
of different types of failures.

• The system displays incorrect information  
• A customer or user receives an incorrect response  
• Inconsistency between systems  
• A failure blocks a process  
• Manual fixes required  

---

## Guiding Principles for the Solution  
<!-- DO NOT REMOVE OR RENAME THIS HEADING -->
<!-- TEMPLATE_CONTENT: Replace this entire section with your project specific content, then delete this TEMPLATE_CONTENT line. -->
High level principles that guide the team  
before any logical or technical design.

• Reliability before convenience  
• Consistency before flexibility  
• Clear business documentation before technical documentation  
• Support critical flows before secondary flows  
• Rapid detection of errors  

---

## Rejected Business Alternatives  
<!-- DO NOT REMOVE OR RENAME THIS HEADING -->
<!-- TEMPLATE_CONTENT: Replace this entire section with your project specific content, then delete this TEMPLATE_CONTENT line. -->
Optional but very useful in real projects.

• A fully manual solution was rejected due to high human error rate  
• A distributed solution was rejected due to availability requirements  
• An overly simple solution was rejected because it does not support the core flows  

---

## Consolidated Summary  
<!-- DO NOT REMOVE OR RENAME THIS HEADING -->
<!-- TEMPLATE_CONTENT: Replace this entire section with your project specific content, then delete this TEMPLATE_CONTENT line. -->
A short summary of this document.

This document defines the business context,  
the main problem, the opportunity,  
the goals and the success metrics.  
It defines a clear scope, describes critical events,  
specifies constraints and assumptions,  
and presents risks and failure impacts.

---

## Final Principle  
<!-- DO NOT REMOVE OR RENAME THIS HEADING -->
<!-- TEMPLATE_CONTENT: Replace this entire section with your project specific content, then delete this TEMPLATE_CONTENT line. -->
Business Requirements mini provides  
a complete and serious business framework  
with no unnecessary bureaucracy.  
Simple enough for daily use,  
deep enough to guide a real agent-based project.

---

This is a protected template file  
and must not be edited directly inside a project.  
To customize it, create or update:  
`docs/project/BUSINESS_REQUIREMENTS.mini.md`

© 2025 Tomer Kedem
