# m01l04 · Your First Ad Hoc Command

Module 1: Introduction And Setup · lesson 1.4 · Pro · [Open the lesson](https://learnsome.tech/learn/ansible-course/m01l04)

**Goal:** You can run a module against a host pattern from the command line, read the result block it returns, tell changed from unchanged in that block, and decide when an ad hoc command is the right tool and when it is a playbook in disguise.

## Labs

| Lab | What it is | Check |
| --- | --- | --- |
| [m01l04-02](m01l04-02/) | The shortest useful command | Read along |
| [m01l04-04](m01l04-04/) | Watching a verdict change | Read along |
| [m01l04-05](m01l04-05/) | The module that can never be idempotent | Read along |

## Exercises

Open exercises from the lesson, to try on your own. They have no answer files: work them out, and use the labs above as reference.

### Ask your own machine three questions

1. Run the setup module with no filter and count how many facts come back.
2. Filter for a fact about memory, and one about the distribution or operating system.
3. Run the command module twice with the same harmless command. Watch the verdict.
4. Explain, in one sentence, why the verdict did not change on the second run.

> **Hint:** The filter argument accepts a pattern, so a partial fact name with a star on the end finds a family of facts.

## Check yourself

- What are the three parts of an ad hoc command?
- What is the difference between a failed result and an unreachable one?
- Why does the file module report changed once and success afterwards?
- Why does the command module report changed every single time?
- Give one task that belongs in an ad hoc command and one that does not.

---

[Course README](../../README.md) · [Ansible Configuration Management at Scale on LearnSome.tech](https://learnsome.tech/courses/ansible-course)
