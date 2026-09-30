# m02l01-05 · Trying patterns without running anything

**Lesson:** [The Static Inventory File](https://learnsome.tech/learn/ansible-course/m02l01) (lesson 2.1, module 2: Inventory And Targets) · Pro  
**Check:** Read along

## Goal

You can write a static inventory in either the ini or the YAML form, declare groups and groups of groups, expand a host range, and select any subset of hosts with a pattern before running anything against them.

In the lesson: There is a flag that resolves a pattern and prints the answer without touching a single host, and it should become a reflex. Start with the parent group, which gives five hosts, gathered from both of its children. Now subtract the databases and three remain. Quote that pattern in your shell, because the exclamation mark means something to the shell as well. Last, a wildcard on the name, which ignores groups entirely and matches the text. Get into the habit of running this before anything destructive. It costs a second and it answers the only question that matters: exactly which machines am I about to change.

## Files

- [`starter/ansible.cfg`](starter/ansible.cfg)
- [`starter/inventory`](starter/inventory)
- [`starter/run.sh`](starter/run.sh): the command the lesson ran
- [`starter/shell-trying-patterns-without-running-anything.sh`](starter/shell-trying-patterns-without-running-anything.sh): the listing from the lesson
- [`check.json`](check.json): how `./check` runs and checks this lab

## Steps

1. Read `starter/shell-trying-patterns-without-running-anything.sh` alongside the lesson.
2. On a machine that has what it needs, the lesson ran it with:

   ```sh
   bash shell-trying-patterns-without-running-anything.sh
   ```

## How to check

**Read along.** The listing does not run cleanly in the lab sandbox (it relies on something the sandbox cannot provide), so the site shows it read-only.

There is nothing to check: `./check m02l01-05` says so and moves on.

---

[Open the lesson on LearnSome.tech](https://learnsome.tech/learn/ansible-course/m02l01) · [All labs of this lesson](../README.md) · [Course README](../../../README.md)
