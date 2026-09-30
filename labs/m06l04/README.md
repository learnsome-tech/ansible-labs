# m06l04 · Performance, Forks And Best Practices

Module 6: Security And Practices · lesson 6.4 · Pro · [Open the lesson](https://learnsome.tech/learn/ansible-course/m06l04)

**Goal:** You can choose practical Ansible defaults for speed, clarity, and safe repeatable runs.

## Labs

| Lab | What it is | Check |
| --- | --- | --- |
| [m06l04-02](m06l04-02/) | Document deliberate defaults | Read along |

## Exercises

Open exercises from the lesson, to try on your own. They have no answer files: work them out, and use the labs above as reference.

### Review a playbook for operations

1. Find one task that is not clearly idempotent.
2. Identify one unnecessary fact gathering step.
3. Choose a safe fork value for your test environment.
4. Write one practice you will enforce in review.

> **Hint:** Optimize only after you can explain the current behavior.

## Check yourself

- What does forks control?
- When can fact caching help?
- Why prefer small idempotent tasks?
- Which configuration choices belong in review?

---

[Course README](../../README.md) · [Ansible Configuration Management at Scale on LearnSome.tech](https://learnsome.tech/courses/ansible-course)
