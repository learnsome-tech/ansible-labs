# m06l04-02 · Document deliberate defaults

**Lesson:** [Performance, Forks And Best Practices](https://learnsome.tech/learn/ansible-course/m06l04) (lesson 6.4, module 6: Security And Practices) · Pro  
**Check:** Read along

## Goal

You can choose practical Ansible defaults for speed, clarity, and safe repeatable runs.

In the lesson: This configuration makes a few choices visible. Ten forks is only an example; choose a value that fits the controller and target capacity. Retry files are disabled so failed state does not appear as unexplained project clutter. The interpreter setting lets Ansible choose a Python interpreter quietly, and the default callback keeps terminal output familiar. Configuration belongs in a reviewed project file when it affects repeatability, rather than living only in one operator's shell profile.

## Files

- [`starter/ansible.cfg`](starter/ansible.cfg): the listing from the lesson
- [`starter/inventory`](starter/inventory)
- [`starter/run.sh`](starter/run.sh): the command the lesson ran
- [`check.json`](check.json): how `./check` runs and checks this lab

## Steps

1. Read `starter/ansible.cfg` alongside the lesson.
2. On a machine that has what it needs, the lesson ran it with:

   ```sh
   cat ansible.cfg
   ```

## How to check

**Read along.** It is a listing to read alongside the lesson, not a program to run.

There is nothing to check: `./check m06l04-02` says so and moves on.

---

[Open the lesson on LearnSome.tech](https://learnsome.tech/learn/ansible-course/m06l04) · [All labs of this lesson](../README.md) · [Course README](../../../README.md)
