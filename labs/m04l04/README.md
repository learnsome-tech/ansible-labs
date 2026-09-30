# m04l04 · Loops

Module 4: Variables, Facts And Logic · lesson 4.4 · Pro · [Open the lesson](https://learnsome.tech/learn/ansible-course/m04l04)

**Goal:** You can repeat one task over a list and read the loop item in its output.

## Labs

| Lab | What it is | Check |
| --- | --- | --- |
| [m04l04-02](m04l04-02/) | Repeat a debug task | Checker |

## Exercises

Open exercises from the lesson, to try on your own. They have no answer files: work them out, and use the labs above as reference.

### Loop over structured data

1. Replace the color list with two mappings that have a name field.
2. Print the name field from each item.
3. Add a third mapping and confirm the task runs three times.

> **Hint:** Use item dot name in the message.

## Check yourself

- What does item contain?
- Why use a loop instead of copied tasks?
- When is structured loop data useful?
- How does output identify iterations?

---

[Course README](../../README.md) · [Ansible Configuration Management at Scale on LearnSome.tech](https://learnsome.tech/courses/ansible-course)
