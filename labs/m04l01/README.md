# m04l01 · Variables And Precedence

Module 4: Variables, Facts And Logic · lesson 4.1 · Pro · [Open the lesson](https://learnsome.tech/learn/ansible-course/m04l01)

**Goal:** You can define variables at useful scopes and explain which value wins when scopes overlap.

## Labs

| Lab | What it is | Check |
| --- | --- | --- |
| [m04l01-02](m04l01-02/) | A variable in a play | Checker |

## Exercises

Open exercises from the lesson, to try on your own. They have no answer files: work them out, and use the labs above as reference.

### Trace one value

1. Move greeting into host variables in the inventory.
2. Add a play value with the same variable name.
3. Run the play and record which value wins.

> **Hint:** The host specific value is more specific than a play value.

## Check yourself

- Why use a variable instead of repeating a value?
- What does precedence decide?
- Name two places a variable can be defined.
- Why should overrides be visible?

---

[Course README](../../README.md) · [Ansible Configuration Management at Scale on LearnSome.tech](https://learnsome.tech/courses/ansible-course)
