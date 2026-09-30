# m01l04-05 · The module that can never be idempotent

**Lesson:** [Your First Ad Hoc Command](https://learnsome.tech/learn/ansible-course/m01l04) (lesson 1.4, module 1: Introduction And Setup) · Pro  
**Check:** Read along

## Goal

You can run a module against a host pattern from the command line, read the result block it returns, tell changed from unchanged in that block, and decide when an ad hoc command is the right tool and when it is a playbook in disguise.

In the lesson: Now a module that cannot be idempotent, and it is important to see why. The command module runs whatever you give it on the far side. Its answer has a different shape: the verdict, a return code, and then the raw text the command printed. The verdict is changed, and it will be changed every single time, because the module has no idea what your command does. It cannot know whether echoing a word altered anything, so it assumes the worst. Contrast that with the setup module, the one that collects facts. Asking it for a single fact by filter is the standard way to find out what a host thinks it is, and it reports nothing changed, because looking is not changing.

## Files

- [`starter/ansible.cfg`](starter/ansible.cfg)
- [`starter/inventory`](starter/inventory)
- [`starter/run.sh`](starter/run.sh): the command the lesson ran
- [`starter/shell-the-module-that-can-never-be-idempotent.sh`](starter/shell-the-module-that-can-never-be-idempotent.sh): the listing from the lesson
- [`check.json`](check.json): how `./check` runs and checks this lab

## Steps

1. Read `starter/shell-the-module-that-can-never-be-idempotent.sh` alongside the lesson.
2. On a machine that has what it needs, the lesson ran it with:

   ```sh
   bash shell-the-module-that-can-never-be-idempotent.sh
   ```

## How to check

**Read along.** The listing does not run cleanly in the lab sandbox (it relies on something the sandbox cannot provide), so the site shows it read-only.

There is nothing to check: `./check m01l04-05` says so and moves on.

---

[Open the lesson on LearnSome.tech](https://learnsome.tech/learn/ansible-course/m01l04) · [All labs of this lesson](../README.md) · [Course README](../../../README.md)
