# m02l01 · The Static Inventory File

Module 2: Inventory And Targets · lesson 2.1 · Pro · [Open the lesson](https://learnsome.tech/learn/ansible-course/m02l01)

**Goal:** You can write a static inventory in either the ini or the YAML form, declare groups and groups of groups, expand a host range, and select any subset of hosts with a pattern before running anything against them.

## Labs

| Lab | What it is | Check |
| --- | --- | --- |
| [m02l01-02](m02l01-02/) | A static inventory in the ini form | Read along |
| [m02l01-03](m02l01-03/) | Reading it back as a tree | Graded |
| [m02l01-05](m02l01-05/) | Trying patterns without running anything | Graded |
| [m02l01-06](m02l01-06/) | The same inventory in the YAML form | Checker |
| [m02l01-07](m02l01-07/) | The same tree, from the other file | Checker |

## Exercises

Open exercises from the lesson, to try on your own. They have no answer files: work them out, and use the labs above as reference.

### Select exactly the hosts you mean

1. Add a staging group with two hosts, and put it under production's sibling rather than inside it.
2. Write one pattern that selects every web server that is not in staging.
3. Write one pattern that selects hosts in both the webservers group and the production group.
4. Check each pattern with the list hosts flag before you believe it.

> **Hint:** Two of these need a separator other than a plain colon. Quote every pattern you write.

## Check yourself

- What does the children keyword change about how a group heading is read?
- Which two groups exist in every inventory without being declared?
- Write the pattern for all production hosts except the databases.
- Why must you quote a pattern containing an exclamation mark in a shell?
- Name one thing the YAML inventory format can express that the ini format cannot.

---

[Course README](../../README.md) · [Ansible Configuration Management at Scale on LearnSome.tech](https://learnsome.tech/courses/ansible-course)
