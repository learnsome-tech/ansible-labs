# m02l03-02 · A dynamic inventory is a program that prints JSON

**Lesson:** [Dynamic Inventory](https://learnsome.tech/learn/ansible-course/m02l03) (lesson 2.3, module 2: Inventory And Targets) · Pro  
**Check:** Read along

## Goal

You can explain why a written host list fails in an elastic environment, read and run an inventory script, prefer an inventory plugin to a script, and build groups automatically from host attributes with keyed groups.

In the lesson: Here is the whole contract, in the smallest program that satisfies it. It happens to be Python, but it could be any language you like, and in real life it is often a compiled binary. The shape it prints is a mapping: a group name, then its hosts, for as many groups as you have. The meta key carries variables for individual hosts, and including it means one call can answer everything Ansible needs to know, rather than one call per host. The program must answer two questions, distinguished by the flag it is given: list everything, or describe one host. That is the entire interface. There is no library to import and nothing to register.

## Files

- [`starter/ansible.cfg`](starter/ansible.cfg)
- [`starter/dynamic.py`](starter/dynamic.py): the listing from the lesson
- [`starter/inventory`](starter/inventory)
- [`starter/run.sh`](starter/run.sh): the command the lesson ran
- [`check.json`](check.json): how `./check` runs and checks this lab

## Steps

1. Read `starter/dynamic.py` alongside the lesson.
2. Follow it the way the lesson builds it:
   - Lines 1–5: any language you like
   - Lines 6–10: a group name, then its hosts
   - Lines 11–15: answer two questions
3. Notes from the lesson:
   - Line 9: the meta key carries variables, so one call can answer everything
4. On a machine that has what it needs, the lesson ran it with:

   ```sh
   cat dynamic.py
   ```

## How to check

**Read along.** It is a listing to read alongside the lesson, not a program to run.

There is nothing to check: `./check m02l03-02` says so and moves on.

---

[Open the lesson on LearnSome.tech](https://learnsome.tech/learn/ansible-course/m02l03) · [All labs of this lesson](../README.md) · [Course README](../../../README.md)
