# m02l02 · Host Groups And Host Variables

Module 2: Inventory And Targets · lesson 2.2 · Pro · [Open the lesson](https://learnsome.tech/learn/ansible-course/m02l02)

**Goal:** You can attach variables to a group or to a single host using the group vars and host vars directories, predict which value wins when several apply, and read the resolved set of variables for any host without running a play.

## Labs

| Lab | What it is | Check |
| --- | --- | --- |
| [m02l02-02](m02l02-02/) | The inventory these variables will attach to | Read along |
| [m02l02-03](m02l02-03/) | Variables for every host, in group vars all | Checker |
| [m02l02-04](m02l02-04/) | Variables for one group | Checker |
| [m02l02-05](m02l02-05/) | Variables for one host | Checker |
| [m02l02-06](m02l02-06/) | Which value actually wins | Runs, not graded |

## Exercises

Open exercises from the lesson, to try on your own. They have no answer files: work them out, and use the labs above as reference.

### Predict, then check

1. Add a group vars file for the production group that sets the log level.
2. Predict what the database host resolves to now, before you run anything.
3. Add the same variable to the databases group with a different value, and predict again.
4. Check both predictions with the host flag, and explain any answer that surprised you.

> **Hint:** Which of production and dbservers is the child of the other? That is the whole question.

## Check yourself

- Where does Ansible look for a file of variables belonging to the webservers group?
- A host is in a group that is a child of production. Which of the two sets of variables wins?
- Why does the database host still get the site name, when it has no file of its own?
- Which command resolves every variable for one host without running a play?
- Name a value that belongs on a host rather than on a group.

---

[Course README](../../README.md) · [Ansible Configuration Management at Scale on LearnSome.tech](https://learnsome.tech/courses/ansible-course)
