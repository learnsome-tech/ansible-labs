# m02l01-02 · A static inventory in the ini form

**Lesson:** [The Static Inventory File](https://learnsome.tech/learn/ansible-course/m02l01) (lesson 2.1, module 2: Inventory And Targets) · Pro  
**Check:** Read along

## Goal

You can write a static inventory in either the ini or the YAML form, declare groups and groups of groups, expand a host range, and select any subset of hosts with a pattern before running anything against them.

In the lesson: Here is a static inventory in the older of the two formats, which is the one most examples you meet will use. A host outside any group goes at the top, with any settings for it on the same line. Then a group heading in square brackets, and the hosts in that group underneath. Notice the first of them: a range in square brackets expands to three separate host names, which saves a great deal of typing and a great deal of copy paste error. Then a second group, written out host by host. Finally a group made of other groups. The word children in the heading is what makes the difference: without it Ansible would read those two lines as host names.

## Files

- [`starter/ansible.cfg`](starter/ansible.cfg)
- [`starter/inventory`](starter/inventory): the listing from the lesson
- [`starter/run.sh`](starter/run.sh): the command the lesson ran
- [`check.json`](check.json): how `./check` runs and checks this lab

## Steps

1. Read `starter/inventory` alongside the lesson.
2. Follow it the way the lesson builds it:
   - Lines 1–2: a host outside any group
   - Lines 3–5: a group heading in square brackets
   - Lines 6–9: a second group
   - Lines 10–13: a group made of other groups
3. Notes from the lesson:
   - Line 5: a range in square brackets expands to three host names
   - Line 11: children: this group contains groups, not hosts
4. On a machine that has what it needs, the lesson ran it with:

   ```sh
   cat inventory
   ```

## How to check

**Read along.** It is a listing to read alongside the lesson, not a program to run.

There is nothing to check: `./check m02l01-02` says so and moves on.

---

[Open the lesson on LearnSome.tech](https://learnsome.tech/learn/ansible-course/m02l01) · [All labs of this lesson](../README.md) · [Course README](../../../README.md)
