# m04l03 · Conditionals

Module 4: Variables, Facts And Logic · lesson 4.3 · Pro · [Open the lesson](https://learnsome.tech/learn/ansible-course/m04l03)

**Goal:** You can guard tasks with a when condition based on variables or facts.

## Labs

| Lab | What it is | Check |
| --- | --- | --- |
| [m04l03-02](m04l03-02/) | Guard a task by family | Checker |

## Exercises

Open exercises from the lesson, to try on your own. They have no answer files: work them out, and use the labs above as reference.

### Add a second branch

1. Add a task that runs when the family is not Debian.
2. Give each task a name that explains its branch.
3. Run the play and confirm exactly one branch is skipped.

> **Hint:** Use the same fact and a different comparison.

## Check yourself

- How does when differ from a template expression?
- What does skipped mean?
- Why use facts in a condition?
- What makes a branch easy to review?

---

[Course README](../../README.md) · [Ansible Configuration Management at Scale on LearnSome.tech](https://learnsome.tech/courses/ansible-course)
