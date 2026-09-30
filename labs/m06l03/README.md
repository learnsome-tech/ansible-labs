# m06l03 · Environment Specific Configuration

Module 6: Security And Practices · lesson 6.3 · Pro · [Open the lesson](https://learnsome.tech/learn/ansible-course/m06l03)

**Goal:** You can organize defaults and environment overrides without duplicating the playbook logic.

## Labs

| Lab | What it is | Check |
| --- | --- | --- |
| [m06l03-02](m06l03-02/) | Separate group data | Checker |

## Exercises

Open exercises from the lesson, to try on your own. They have no answer files: work them out, and use the labs above as reference.

### Add a production overlay

1. Create a production group variable file with the same keys.
2. Give it production values.
3. Use one playbook against each inventory and compare only the data that changes.

> **Hint:** Shared keys are what let the playbook stay unchanged.

## Check yourself

- Where should shared defaults live?
- What does a group variable describe?
- How does inventory choose values?
- Why avoid copied playbooks?

---

[Course README](../../README.md) · [Ansible Configuration Management at Scale on LearnSome.tech](https://learnsome.tech/courses/ansible-course)
