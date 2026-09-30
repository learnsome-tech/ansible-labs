# m04l03-02 · Guard a task by family

**Lesson:** [Conditionals](https://learnsome.tech/learn/ansible-course/m04l03) (lesson 4.3, module 4: Variables, Facts And Logic) · Pro  
**Check:** Checker

## Goal

You can guard tasks with a when condition based on variables or facts.

In the lesson: The play gathers facts, then guards a debug task with a comparison against the operating system family. There are no braces around the expression in when. If the target belongs to the Debian family, the message runs. Otherwise the task is skipped. The same pattern can guard package names, service choices, templates, or an entire block. Be careful with spelling and types. A string comparison and a Boolean test are different expressions, and a condition that accidentally stays true can change every host in your inventory.

## Files

- [`starter/ansible.cfg`](starter/ansible.cfg)
- [`starter/inventory`](starter/inventory)
- [`starter/run.sh`](starter/run.sh): the command the lesson ran
- [`starter/when.yml`](starter/when.yml): the listing from the lesson
- [`check.json`](check.json): how `./check` runs and checks this lab

## Steps

1. Go to the starter: `cd labs/m04l03/m04l03-02/starter`
2. Read `when.yml`.
3. Edit `when.yml` and check it: `ansible-playbook --syntax-check when.yml`.
4. Check it from the repository root: `./check m04l03-02`.

## How to check

`./check m04l03-02` copies `starter/` into a scratch directory and runs `ansible-playbook --syntax-check when.yml` there, the way the site's lab sandbox does: that directory is the working directory and `HOME`, `LANG=C.UTF-8`, `TZ=UTC`, a limit of 10 seconds and 256 KiB of output per stream.

This is a checker lab: it runs `ansible-playbook --syntax-check` against localhost: it parses the playbook and what it includes without running any task. The site shows the checker's report without grading; `./check` passes when the checker finds no errors.

---

[Open the lesson on LearnSome.tech](https://learnsome.tech/learn/ansible-course/m04l03) · [All labs of this lesson](../README.md) · [Course README](../../../README.md)
