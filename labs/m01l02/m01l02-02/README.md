# m01l02-02 · What the control node has

**Lesson:** [Ansible Architecture And The Control Node](https://learnsome.tech/learn/ansible-course/m01l02) (lesson 1.2, module 1: Introduction And Setup) · Free  
**Check:** Runs, not graded

## Goal

You can name the two roles in an Ansible setup, explain what agentless means in terms of what actually happens on a managed node during a task, and point at the two files on the control node that decide who is managed and how.

In the lesson: Start on the control node and ask it which version of the core engine is installed. The answer names the core package, which is the engine itself. That engine ships with a library of modules, and a module is a small program that knows how to make one kind of change. Ask it to list some of them and you get names in three parts, separated by dots. The first two parts are the collection the module comes from, and the last is the module itself. Every module you see here belongs to the built in collection, which is the set that ships with the engine. There are several thousand more available separately, and a later module of this course covers where those come from.

## Files

- [`starter/ansible.cfg`](starter/ansible.cfg)
- [`starter/inventory`](starter/inventory)
- [`starter/run.sh`](starter/run.sh): the command the lesson ran
- [`starter/shell-what-the-control-node-has.sh`](starter/shell-what-the-control-node-has.sh): the listing from the lesson
- [`check.json`](check.json): how `./check` runs and checks this lab

## Steps

1. Go to the starter: `cd labs/m01l02/m01l02-02/starter`
2. Read `shell-what-the-control-node-has.sh`.
3. The session types these commands, in order:

   ```sh
   ansible --version | head -1
   ansible-doc -l ansible.builtin | head -4
   ```
4. Run it: `bash shell-what-the-control-node-has.sh`.
5. Check it from the repository root: `./check m01l02-02`.

## How to check

`./check m01l02-02` copies `starter/` into a scratch directory and runs `bash shell-what-the-control-node-has.sh` there, the way the site's lab sandbox does: that directory is the working directory and `HOME`, `LANG=C.UTF-8`, `TZ=UTC`, a limit of 10 seconds and 256 KiB of output per stream.

It runs without a pass or fail: what the listing prints in the lab sandbox differs from the output recorded for the lesson (it depends on the machine, the clock or the network), so the site runs it without a pass or fail. `./check` shows the output and the exit code.

---

[Open the lesson on LearnSome.tech](https://learnsome.tech/learn/ansible-course/m01l02) · [All labs of this lesson](../README.md) · [Course README](../../../README.md)
