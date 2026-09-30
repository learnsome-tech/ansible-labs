# m03l02-03 · Apply the desired state

**Lesson:** [Writing Your First Playbook](https://learnsome.tech/learn/ansible-course/m03l02) (lesson 3.2, module 3: Playbooks, Plays And Tasks) · Pro  
**Check:** Read along

## Goal

You can write a local playbook that creates a directory and a file in its workspace.

In the lesson: Apply the desired state. The directory task reports changed because the directory was absent, and the copy task reports changed because the file was absent. There are two successful tasks and two changes in the recap. Run this in a disposable workspace while you are learning. The same pattern works against a group of remote hosts once your inventory and credentials are ready, but the target and the connection are the only pieces that need to change. The task descriptions and their declared states stay the same.

## Files

- [`starter/ansible.cfg`](starter/ansible.cfg)
- [`starter/inventory`](starter/inventory)
- [`starter/run.sh`](starter/run.sh): the command the lesson ran
- [`starter/site.yml`](starter/site.yml): the listing from the lesson
- [`check.json`](check.json): how `./check` runs and checks this lab

## Steps

1. Read `starter/site.yml` alongside the lesson.
2. On a machine that has what it needs, the lesson ran it with:

   ```sh
   ansible-playbook site.yml
   ```

## How to check

**Read along.** The listing does not run cleanly in the lab sandbox (it relies on something the sandbox cannot provide), so the site shows it read-only.

There is nothing to check: `./check m03l02-03` says so and moves on.

---

[Open the lesson on LearnSome.tech](https://learnsome.tech/learn/ansible-course/m03l02) · [All labs of this lesson](../README.md) · [Course README](../../../README.md)
