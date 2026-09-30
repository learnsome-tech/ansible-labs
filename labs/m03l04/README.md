# m03l04 · Check Mode And Diff

Module 3: Playbooks, Plays And Tasks · lesson 3.4 · Pro · [Open the lesson](https://learnsome.tech/learn/ansible-course/m03l04)

**Goal:** You can preview a playbook with check mode and inspect proposed file changes with diff output.

## Labs

| Lab | What it is | Check |
| --- | --- | --- |
| [m03l04-02](m03l04-02/) | A file whose change is visible | Checker |
| [m03l04-03](m03l04-03/) | Run the rehearsal | Graded |

## Exercises

Open exercises from the lesson, to try on your own. They have no answer files: work them out, and use the labs above as reference.

### Preview a second revision

1. Change the content in preview dot conf.
2. Run the check and diff command again.
3. Describe which lines would change before applying it.

> **Hint:** Check mode should leave the original file untouched.

## Check yourself

- What does check mode prevent?
- When is diff output most useful?
- Why is a preview not a guarantee?
- What should a final check run report after applying the state?

---

[Course README](../../README.md) · [Ansible Configuration Management at Scale on LearnSome.tech](https://learnsome.tech/courses/ansible-course)
