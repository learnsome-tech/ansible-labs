# m01l04-02 · The shortest useful command

**Lesson:** [Your First Ad Hoc Command](https://learnsome.tech/learn/ansible-course/m01l04) (lesson 1.4, module 1: Introduction And Setup) · Pro  
**Check:** Read along

## Goal

You can run a module against a host pattern from the command line, read the result block it returns, tell changed from unchanged in that block, and decide when an ad hoc command is the right tool and when it is a playbook in disguise.

In the lesson: Here are the three parts in practice. The word all is the host pattern, meaning every host in the inventory. The flag before the module name introduces the module, and here it is the ping module. The answer comes back as one block per host, headed by the host name and a verdict. Now the same shape with the debug module, which takes an argument, introduced by the other flag. The argument is a key and a value joined by an equals sign. Debug does nothing except report, which makes it the module to reach for when you are learning the shape of a command rather than trying to change anything.

## Files

- [`starter/ansible.cfg`](starter/ansible.cfg)
- [`starter/inventory`](starter/inventory)
- [`starter/run.sh`](starter/run.sh): the command the lesson ran
- [`starter/shell-the-shortest-useful-command.sh`](starter/shell-the-shortest-useful-command.sh): the listing from the lesson
- [`check.json`](check.json): how `./check` runs and checks this lab

## Steps

1. Read `starter/shell-the-shortest-useful-command.sh` alongside the lesson.
2. On a machine that has what it needs, the lesson ran it with:

   ```sh
   bash shell-the-shortest-useful-command.sh
   ```

## How to check

**Read along.** The listing does not run cleanly in the lab sandbox (it relies on something the sandbox cannot provide), so the site shows it read-only.

There is nothing to check: `./check m01l04-02` says so and moves on.

---

[Open the lesson on LearnSome.tech](https://learnsome.tech/learn/ansible-course/m01l04) · [All labs of this lesson](../README.md) · [Course README](../../../README.md)
