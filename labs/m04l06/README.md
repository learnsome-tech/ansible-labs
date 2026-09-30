# m04l06 · Error Handling With Block, Rescue And Always

Module 4: Variables, Facts And Logic · lesson 4.6 · Pro · [Open the lesson](https://learnsome.tech/learn/ansible-course/m04l06)

**Goal:** You can group risky tasks and provide rescue and always actions for predictable recovery.

## Labs

| Lab | What it is | Check |
| --- | --- | --- |
| [m04l06-02](m04l06-02/) | A block with recovery | Checker |

## Exercises

Open exercises from the lesson, to try on your own. They have no answer files: work them out, and use the labs above as reference.

### Design a safe failure path

1. Put two related tasks inside a block.
2. Add a rescue task that records a recovery message.
3. Add an always task that records completion.
4. Decide whether the play should continue after rescue.

> **Hint:** Recovery is a policy choice, not an automatic success.

## Check yourself

- When does rescue run?
- When does always run?
- What belongs in always?
- Why must rescue not hide a serious failure?

---

[Course README](../../README.md) · [Ansible Configuration Management at Scale on LearnSome.tech](https://learnsome.tech/courses/ansible-course)
