# m02l03-06 · The same idea, on a source you can run here

**Lesson:** [Dynamic Inventory](https://learnsome.tech/learn/ansible-course/m02l03) (lesson 2.3, module 2: Inventory And Targets) · Pro  
**Check:** Read along

## Goal

You can explain why a written host list fails in an elastic environment, read and run an inventory script, prefer an inventory plugin to a script, and build groups automatically from host attributes with keyed groups.

In the lesson: Keyed groups are not a cloud feature, so here is the same mechanism on a source that runs on your own machine. This inventory carries attributes on each host, in the way a cloud provider carries tags, and it has no groups at all. Two attributes per host, and not one group heading anywhere in the file. On its own this inventory is close to useless, because there is nothing to target except individual host names and the group called all. What turns it into something useful is a second inventory source, layered over it, whose whole job is to invent the groups.

## Files

- [`starter/ansible.cfg`](starter/ansible.cfg)
- [`starter/aws_ec2.yml`](starter/aws_ec2.yml)
- [`starter/dynamic.py`](starter/dynamic.py)
- [`starter/inventory`](starter/inventory): the listing from the lesson
- [`starter/run.sh`](starter/run.sh): the command the lesson ran
- [`check.json`](check.json): how `./check` runs and checks this lab

## Steps

1. Read `starter/inventory` alongside the lesson.
2. Follow it the way the lesson builds it:
   - Lines 1–2: attributes on each host
   - Lines 3–5: no groups at all
3. Notes from the lesson:
   - Line 3: two attributes per host, and not one group heading anywhere
4. On a machine that has what it needs, the lesson ran it with:

   ```sh
   cat inventory
   ```

## How to check

**Read along.** It is a listing to read alongside the lesson, not a program to run.

There is nothing to check: `./check m02l03-06` says so and moves on.

---

[Open the lesson on LearnSome.tech](https://learnsome.tech/learn/ansible-course/m02l03) · [All labs of this lesson](../README.md) · [Course README](../../../README.md)
