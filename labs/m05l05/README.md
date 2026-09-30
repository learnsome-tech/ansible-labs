# m05l05 · Testing With Molecule

Module 5: Roles And Collections · lesson 5.5 · Pro · [Open the lesson](https://learnsome.tech/learn/ansible-course/m05l05)

**Goal:** You can describe Molecule's role in testing automation and its limits on a single build machine.

## Labs

| Lab | What it is | Check |
| --- | --- | --- |
| [m05l05-02](m05l05-02/) | A scenario names its phases | Checker |

## Exercises

Open exercises from the lesson, to try on your own. They have no answer files: work them out, and use the labs above as reference.

### Write a contract test

1. Choose one observable result your role promises.
2. Write a verification assertion for that result.
3. Run the scenario in a disposable driver environment.

> **Hint:** Assert the end state a user depends on.

## Check yourself

- What phases does Molecule separate?
- What does a driver choose?
- What should verification assert?
- Why is scope important in a passing test?

---

[Course README](../../README.md) · [Ansible Configuration Management at Scale on LearnSome.tech](https://learnsome.tech/courses/ansible-course)
