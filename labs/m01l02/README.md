# m01l02 · Ansible Architecture And The Control Node

Module 1: Introduction And Setup · lesson 1.2 · Free · [Open the lesson](https://learnsome.tech/learn/ansible-course/m01l02)

**Goal:** You can name the two roles in an Ansible setup, explain what agentless means in terms of what actually happens on a managed node during a task, and point at the two files on the control node that decide who is managed and how.

## Labs

| Lab | What it is | Check |
| --- | --- | --- |
| [m01l02-02](m01l02-02/) | What the control node has | Runs, not graded |
| [m01l02-04](m01l02-04/) | The first of the two files that matter | Read along |
| [m01l02-05](m01l02-05/) | Asking Ansible what it thinks the inventory says | Graded |
| [m01l02-06](m01l02-06/) | The second file: settings for this project | Read along |
| [m01l02-07](m01l02-07/) | Proving the two files work together | Graded |

## Check yourself

- Which of the two roles needs Ansible installed, and what does the other one need?
- Describe the five steps of running one task against one managed node.
- What are the two groups that exist in every inventory, whether you declare them or not?
- Why does a successful ping module result prove more than a network ping would?
- Name one advantage and one cost of a push model compared with an agent that pulls.

---

[Course README](../../README.md) · [Ansible Configuration Management at Scale on LearnSome.tech](https://learnsome.tech/courses/ansible-course)
