# m01l01-03 · The script that describes steps

**Lesson:** [What Configuration Management Is](https://learnsome.tech/learn/ansible-course/m01l01) (lesson 1.1, module 1: Introduction And Setup) · Free  
**Check:** Read along

## Goal

You can say what configuration management is, why it comes after provisioning rather than instead of it, and demonstrate the difference between a script that repeats its work and a playbook that does not.

In the lesson: Here is a shell script that does two small pieces of configuration. It is careful, as these things go. First, make a directory, and the flag on the end means do not complain if it exists already. Then append a line of configuration to a file inside it. This is about as defensive as a script of this kind ever gets, and it still has the flaw. Appending has no memory. The shell cannot look at the file and ask whether that line is already present, because you never told it that the line being present is the point. You told it to append.

## Files

- [`starter/ansible.cfg`](starter/ansible.cfg)
- [`starter/inventory`](starter/inventory)
- [`starter/run.sh`](starter/run.sh): the command the lesson ran
- [`starter/setup.sh`](starter/setup.sh): the listing from the lesson
- [`check.json`](check.json): how `./check` runs and checks this lab

## Steps

1. Read `starter/setup.sh` alongside the lesson.
2. Follow it the way the lesson builds it:
   - Lines 1: a shell script
   - Lines 2: make a directory
   - Lines 3: append a line
3. Notes from the lesson:
   - Line 3: append: the shell has no idea whether the line is already there
4. On a machine that has what it needs, the lesson ran it with:

   ```sh
   cat setup.sh
   ```

## How to check

**Read along.** It is a listing to read alongside the lesson, not a program to run.

There is nothing to check: `./check m01l01-03` says so and moves on.

---

[Open the lesson on LearnSome.tech](https://learnsome.tech/learn/ansible-course/m01l01) · [All labs of this lesson](../README.md) · [Course README](../../../README.md)
