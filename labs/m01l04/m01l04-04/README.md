# m01l04-04 · Watching a verdict change

**Lesson:** [Your First Ad Hoc Command](https://learnsome.tech/learn/ansible-course/m01l04) (lesson 1.4, module 1: Introduction And Setup) · Pro  
**Check:** Read along

## Goal

You can run a module against a host pattern from the command line, read the result block it returns, tell changed from unchanged in that block, and decide when an ad hoc command is the right tool and when it is a playbook in disguise.

In the lesson: Idempotency is not a playbook feature. It lives in the modules, so you can watch it from the command line. Ask for a directory to exist. The verdict is changed, and the data says changed is true, because there was no such directory and now there is. Ask for exactly the same thing again and the verdict is success with changed false. The module looked, found the directory already in the state you described, and did nothing. Only the first two lines of each block are shown here, because the file module reports the owner, the group and the permissions as well, and those are not the point right now. Two more things worth noticing: the module name is written in its short form, which is allowed on the command line, and the arguments are quoted because there are two of them.

## Files

- [`starter/ansible.cfg`](starter/ansible.cfg)
- [`starter/inventory`](starter/inventory)
- [`starter/run.sh`](starter/run.sh): the command the lesson ran
- [`starter/shell-watching-a-verdict-change.sh`](starter/shell-watching-a-verdict-change.sh): the listing from the lesson
- [`check.json`](check.json): how `./check` runs and checks this lab

## Steps

1. Read `starter/shell-watching-a-verdict-change.sh` alongside the lesson.
2. On a machine that has what it needs, the lesson ran it with:

   ```sh
   bash shell-watching-a-verdict-change.sh
   ```

## How to check

**Read along.** The listing does not run cleanly in the lab sandbox (it relies on something the sandbox cannot provide), so the site shows it read-only.

There is nothing to check: `./check m01l04-04` says so and moves on.

---

[Open the lesson on LearnSome.tech](https://learnsome.tech/learn/ansible-course/m01l04) · [All labs of this lesson](../README.md) · [Course README](../../../README.md)
