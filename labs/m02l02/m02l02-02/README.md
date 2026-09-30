# m02l02-02 · The inventory these variables will attach to

**Lesson:** [Host Groups And Host Variables](https://learnsome.tech/learn/ansible-course/m02l02) (lesson 2.2, module 2: Inventory And Targets) · Pro  
**Check:** Read along

## Goal

You can attach variables to a group or to a single host using the group vars and host vars directories, predict which value wins when several apply, and read the resolved set of variables for any host without running a play.

In the lesson: Start from an inventory much like the last one, so that the variables have somewhere to attach. There are three web servers, reached through a range. There is one database, and a parent group holding both of the others. Nothing here says anything about what these hosts should look like: it is still a list of names and a shape. The next three files are where the description goes, and none of them will mention a host name that is not already here. Keeping those two concerns apart, the list of machines and the description of each kind, is what makes this arrangement worth the extra files.

## Files

- [`starter/ansible.cfg`](starter/ansible.cfg)
- [`starter/inventory`](starter/inventory): the listing from the lesson
- [`starter/run.sh`](starter/run.sh): the command the lesson ran
- [`check.json`](check.json): how `./check` runs and checks this lab

## Steps

1. Read `starter/inventory` alongside the lesson.
2. Follow it the way the lesson builds it:
   - Lines 1–4: three web servers
   - Lines 5–11: one database, and a parent group
3. On a machine that has what it needs, the lesson ran it with:

   ```sh
   cat inventory
   ```

## How to check

**Read along.** It is a listing to read alongside the lesson, not a program to run.

There is nothing to check: `./check m02l02-02` says so and moves on.

---

[Open the lesson on LearnSome.tech](https://learnsome.tech/learn/ansible-course/m02l02) · [All labs of this lesson](../README.md) · [Course README](../../../README.md)
