# m03l02 · Writing Your First Playbook

Module 3: Playbooks, Plays And Tasks · lesson 3.2 · Pro · [Open the lesson](https://learnsome.tech/learn/ansible-course/m03l02)

**Goal:** You can write a local playbook that creates a directory and a file in its workspace.

## Labs

| Lab | What it is | Check |
| --- | --- | --- |
| [m03l02-02](m03l02-02/) | Create a directory and a file | Checker |
| [m03l02-03](m03l02-03/) | Apply the desired state | Graded |

## Exercises

Open exercises from the lesson, to try on your own. They have no answer files: work them out, and use the labs above as reference.

### Add one more declared state

1. Add a task that creates a second file under the site directory.
2. Use the copy module and give the task a descriptive name.
3. Run the playbook twice and compare the recap counters.

> **Hint:** The second run should report fewer changes than the first.

## Check yourself

- Why should a playbook describe an end state?
- Which task must run first in this example, and why?
- What does the file module declare here?
- What should change on a second identical run?

---

[Course README](../../README.md) · [Ansible Configuration Management at Scale on LearnSome.tech](https://learnsome.tech/courses/ansible-course)
