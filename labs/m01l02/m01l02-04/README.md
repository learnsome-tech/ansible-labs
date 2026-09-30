# m01l02-04 · The first of the two files that matter

**Lesson:** [Ansible Architecture And The Control Node](https://learnsome.tech/learn/ansible-course/m01l02) (lesson 1.2, module 1: Introduction And Setup) · Free  
**Check:** Read along

## Goal

You can name the two roles in an Ansible setup, explain what agentless means in terms of what actually happens on a managed node during a task, and point at the two files on the control node that decide who is managed and how.

In the lesson: Two files on the control node decide almost everything, and this is the first. The inventory lists the hosts Ansible is allowed to manage. A comment at the top costs nothing and saves an argument later. Then one line per host. This inventory has a single entry, this machine, and the setting after the host name tells Ansible to use the local connection, which means run the module right here rather than opening a connection to itself over secure shell. That is what makes this course runnable on one laptop with no servers. Everything you learn about inventories applies unchanged when the entries are real host names.

## Files

- [`starter/ansible.cfg`](starter/ansible.cfg)
- [`starter/inventory`](starter/inventory): the listing from the lesson
- [`starter/run.sh`](starter/run.sh): the command the lesson ran
- [`check.json`](check.json): how `./check` runs and checks this lab

## Steps

1. Read `starter/inventory` alongside the lesson.
2. Follow it the way the lesson builds it:
   - Lines 1–2: a comment at the top
   - Lines 3: one line per host
3. Notes from the lesson:
   - Line 3: the local connection runs modules here instead of over ssh
4. On a machine that has what it needs, the lesson ran it with:

   ```sh
   cat inventory
   ```

## How to check

**Read along.** It is a listing to read alongside the lesson, not a program to run.

There is nothing to check: `./check m01l02-04` says so and moves on.

---

[Open the lesson on LearnSome.tech](https://learnsome.tech/learn/ansible-course/m01l02) · [All labs of this lesson](../README.md) · [Course README](../../../README.md)
