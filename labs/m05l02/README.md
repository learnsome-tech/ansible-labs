# m05l02 · Writing A Role

Module 5: Roles And Collections · lesson 5.2 · Pro · [Open the lesson](https://learnsome.tech/learn/ansible-course/m05l02)

**Goal:** You can write a small role and include it from a playbook.

## Labs

| Lab | What it is | Check |
| --- | --- | --- |
| [m05l02-02](m05l02-02/) | Call a role from a play | Checker |

## Exercises

Open exercises from the lesson, to try on your own. They have no answer files: work them out, and use the labs above as reference.

### Give the role a contract

1. Add a default value for site name.
2. Use the value in one role task or template.
3. Call the role from a second play with a different value.

> **Hint:** The caller should override the default explicitly.

## Check yourself

- How does a play call a role?
- Where should implementation details live?
- How can a caller customize a role?
- What belongs in a role contract?

---

[Course README](../../README.md) · [Ansible Configuration Management at Scale on LearnSome.tech](https://learnsome.tech/courses/ansible-course)
