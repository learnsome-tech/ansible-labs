# m01l03-04 · Pinning the version, so a team agrees

**Lesson:** [Installing Ansible](https://learnsome.tech/learn/ansible-course/m01l03) (lesson 1.3, module 1: Introduction And Setup) · Free  
**Check:** Read along

## Goal

You can install Ansible into an isolated Python environment, say what the core engine gives you and what the community package adds on top, pin the version for a team, and prove the control node works with a playbook rather than a version string.

In the lesson: As soon as more than one person runs these playbooks, pin the version. Write a requirements file with a comment saying why, then the pin itself. Note the two equals signs, which mean exactly this version rather than this version or anything newer. Modules change behaviour between releases, deprecated arguments get removed, and defaults move. A playbook that works on your laptop and fails in the pipeline, for no visible reason, is usually two different engine versions. Installing from this file rather than by hand costs nothing and removes an entire category of confusing afternoon.

## Files

- [`starter/ansible.cfg`](starter/ansible.cfg)
- [`starter/inventory`](starter/inventory)
- [`starter/requirements.txt`](starter/requirements.txt): the listing from the lesson
- [`starter/run.sh`](starter/run.sh): the command the lesson ran
- [`check.json`](check.json): how `./check` runs and checks this lab

## Steps

1. Read `starter/requirements.txt` alongside the lesson.
2. Follow it the way the lesson builds it:
   - Lines 1–2: a comment saying why
   - Lines 3: the pin itself
3. Notes from the lesson:
   - Line 3: two equals signs: exactly this version, not this or newer
4. On a machine that has what it needs, the lesson ran it with:

   ```sh
   cat requirements.txt
   ```

## How to check

**Read along.** It is a listing to read alongside the lesson, not a program to run.

There is nothing to check: `./check m01l03-04` says so and moves on.

---

[Open the lesson on LearnSome.tech](https://learnsome.tech/learn/ansible-course/m01l03) · [All labs of this lesson](../README.md) · [Course README](../../../README.md)
