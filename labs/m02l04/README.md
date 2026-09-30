# m02l04 · Connections And Privilege Escalation

Module 2: Inventory And Targets · lesson 2.4 · Pro · [Open the lesson](https://learnsome.tech/learn/ansible-course/m02l04)

**Goal:** You can set the connection variables that decide how Ansible reaches a host, choose the right connection plugin, and escalate privilege correctly with become at the play or task level rather than logging in as root.

## Labs

| Lab | What it is | Check |
| --- | --- | --- |
| [m02l04-02](m02l04-02/) | The connection variables in an inventory | Read along |
| [m02l04-04](m02l04-04/) | Proving which account and which machine | Graded |
| [m02l04-06](m02l04-06/) | Become, at the play level and at the task level | Checker |
| [m02l04-08](m02l04-08/) | Being explicit about not escalating | Runs, not graded |

## Exercises

Open exercises from the lesson, to try on your own. They have no answer files: work them out, and use the labs above as reference.

### Make the connection wrong on purpose

1. Add a host to your inventory with a name that does not resolve, and ping everything.
2. Read the result: which verdict do you get, and how is it different from a failure?
3. Set the connection variable on that host to local, and ping again.
4. Explain what you just proved about where connection settings live.

> **Hint:** The second ping should succeed. Ask yourself which machine actually ran the module.

## Check yourself

- Where would you put a connection setting that applies to one legacy host only?
- What is the difference between the account you connect as and the account you become?
- Give two reasons not to log in directly as the administrator account.
- A play escalates and then hangs. What is the most likely missing piece?
- Why does the command module task in who.yml report ok rather than changed?

---

[Course README](../../README.md) · [Ansible Configuration Management at Scale on LearnSome.tech](https://learnsome.tech/courses/ansible-course)
