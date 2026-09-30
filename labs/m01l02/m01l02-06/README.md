# m01l02-06 · The second file: settings for this project

**Lesson:** [Ansible Architecture And The Control Node](https://learnsome.tech/learn/ansible-course/m01l02) (lesson 1.2, module 1: Introduction And Setup) · Free  
**Check:** Read along

## Goal

You can name the two roles in an Ansible setup, explain what agentless means in terms of what actually happens on a managed node during a task, and point at the two files on the control node that decide who is managed and how.

In the lesson: The second file is the configuration. Ansible looks for it in the working directory first, which means a project can carry its own settings beside the playbooks, and that is much better than every engineer remembering the same flags. The inventory setting says where the host list is, so no command in this project needs to name it. Then two settings about noise. The first stops the tool asking about unknown host keys, which is fine for a demonstration and is not fine in production. The second stops it writing a file listing failed hosts after every failure.

## Files

- [`starter/ansible.cfg`](starter/ansible.cfg): the listing from the lesson
- [`starter/inventory`](starter/inventory)
- [`starter/run.sh`](starter/run.sh): the command the lesson ran
- [`check.json`](check.json): how `./check` runs and checks this lab

## Steps

1. Read `starter/ansible.cfg` alongside the lesson.
2. Follow it the way the lesson builds it:
   - Lines 1–3: the inventory setting
   - Lines 4–7: two settings about noise
3. Notes from the lesson:
   - Line 3: a project config beside the playbooks beats flags in shell history
4. On a machine that has what it needs, the lesson ran it with:

   ```sh
   cat ansible.cfg
   ```

## How to check

**Read along.** It is a listing to read alongside the lesson, not a program to run.

There is nothing to check: `./check m01l02-06` says so and moves on.

---

[Open the lesson on LearnSome.tech](https://learnsome.tech/learn/ansible-course/m01l02) · [All labs of this lesson](../README.md) · [Course README](../../../README.md)
