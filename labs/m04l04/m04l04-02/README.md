# m04l04-02 · Repeat a debug task

**Lesson:** [Loops](https://learnsome.tech/learn/ansible-course/m04l04) (lesson 4.4, module 4: Variables, Facts And Logic) · Pro  
**Check:** Checker

## Goal

You can repeat one task over a list and read the loop item in its output.

In the lesson: This play defines a short list and gives one debug task a loop. Ansible runs the task once for each color, and item holds the current value. The task name stays the same while the result identifies each iteration. Keep the loop data close to the play while learning, then move shared lists into variable files or inventory when they become configuration. If the list has structure, use named fields rather than relying on a position that another person must remember.

## Files

- [`starter/ansible.cfg`](starter/ansible.cfg)
- [`starter/inventory`](starter/inventory)
- [`starter/loop.yml`](starter/loop.yml): the listing from the lesson
- [`starter/run.sh`](starter/run.sh): the command the lesson ran
- [`check.json`](check.json): how `./check` runs and checks this lab

## Steps

1. Go to the starter: `cd labs/m04l04/m04l04-02/starter`
2. Read `loop.yml`.
3. Edit `loop.yml` and check it: `ansible-playbook --syntax-check loop.yml`.
4. Check it from the repository root: `./check m04l04-02`.
5. The site offers these commands for this lab; the first is the default, and the only one graded. Run another with `./check m04l04-02 --command=<id>`:
   - `syntax-check` (Syntax check): `ansible-playbook --syntax-check loop.yml`
   - `list-tasks` (List tasks): `ansible-playbook --list-tasks loop.yml`
   - `list-hosts` (List hosts): `ansible-playbook --list-hosts loop.yml`

## How to check

`./check m04l04-02` copies `starter/` into a scratch directory and runs `ansible-playbook --syntax-check loop.yml` there, the way the site's lab sandbox does: that directory is the working directory and `HOME`, `LANG=C.UTF-8`, `TZ=UTC`, a limit of 10 seconds and 256 KiB of output per stream.

This is a checker lab: it runs `ansible-playbook --syntax-check` against localhost: it parses the playbook and what it includes without running any task. The site shows the checker's report without grading; `./check` passes when the checker finds no errors.

---

[Open the lesson on LearnSome.tech](https://learnsome.tech/learn/ansible-course/m04l04) · [All labs of this lesson](../README.md) · [Course README](../../../README.md)
