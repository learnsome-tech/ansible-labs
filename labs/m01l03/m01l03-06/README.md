# m01l03-06 · The control node, proved

**Lesson:** [Installing Ansible](https://learnsome.tech/learn/ansible-course/m01l03) (lesson 1.3, module 1: Introduction And Setup) · Free  
**Check:** Read along

## Goal

You can install Ansible into an isolated Python environment, say what the core engine gives you and what the community package adds on top, pin the version for a team, and prove the control node works with a playbook rather than a version string.

In the lesson: Run the check. The first task in the transcript is one you never wrote: gathering facts. That is the fact collection the play asked for, and it counts as a task, which is why the recap says two tasks rather than one. Then your task, and because the debug module prints, its result carries the message alongside the verdict. Both tasks say ok and the change count is zero, which is right: nothing here was supposed to alter the host. The message tells you the engine version and the Python version the far side is using. If that line prints, your control node works end to end.

## Files

- [`starter/ansible.cfg`](starter/ansible.cfg)
- [`starter/check.yml`](starter/check.yml): the listing from the lesson
- [`starter/inventory`](starter/inventory)
- [`starter/requirements.txt`](starter/requirements.txt)
- [`starter/run.sh`](starter/run.sh): the command the lesson ran
- [`check.json`](check.json): how `./check` runs and checks this lab

## Steps

1. Read `starter/check.yml` alongside the lesson.
2. On a machine that has what it needs, the lesson ran it with:

   ```sh
   ansible-playbook check.yml
   ```

## How to check

**Read along.** The listing does not run cleanly in the lab sandbox (it relies on something the sandbox cannot provide), so the site shows it read-only.

There is nothing to check: `./check m01l03-06` says so and moves on.

---

[Open the lesson on LearnSome.tech](https://learnsome.tech/learn/ansible-course/m01l03) · [All labs of this lesson](../README.md) · [Course README](../../../README.md)
