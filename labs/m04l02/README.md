# m04l02 · Gathering Facts

Module 4: Variables, Facts And Logic · lesson 4.2 · Pro · [Open the lesson](https://learnsome.tech/learn/ansible-course/m04l02)

**Goal:** You can inspect gathered facts and use a fact safely in a task.

## Labs

| Lab | What it is | Check |
| --- | --- | --- |
| [m04l02-02](m04l02-02/) | Inspect a fact | Checker |

## Exercises

Open exercises from the lesson, to try on your own. They have no answer files: work them out, and use the labs above as reference.

### Find one useful fact

1. Use a debug task to inspect the operating system family fact.
2. Add a second task that prints the gathered host name.
3. Run the play against a different inventory host if one is available.

> **Hint:** Facts are nested under the ansible facts namespace.

## Check yourself

- What is a fact?
- When does gathering normally happen?
- Why disable gathering sometimes?
- Where do gathered facts live?

---

[Course README](../../README.md) · [Ansible Configuration Management at Scale on LearnSome.tech](https://learnsome.tech/courses/ansible-course)
