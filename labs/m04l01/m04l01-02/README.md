# m04l01-02 · A variable in a play

**Lesson:** [Variables And Precedence](https://learnsome.tech/learn/ansible-course/m04l01) (lesson 4.1, module 4: Variables, Facts And Logic) · Pro  
**Check:** Checker

## Goal

You can define variables at useful scopes and explain which value wins when scopes overlap.

In the lesson: This play defines greeting under vars, so the value belongs to the play. The task refers to the variable with Jinja expression syntax, which you will study in detail later. Keeping the value above the tasks makes the task reusable. A host variable with the same name would be more specific for that host, while an extra variable supplied at launch can override both. Do not guess at precedence from where a line appears on screen. Use the documentation table and keep overrides visible in your project.

## Files

- [`starter/ansible.cfg`](starter/ansible.cfg)
- [`starter/inventory`](starter/inventory)
- [`starter/run.sh`](starter/run.sh): the command the lesson ran
- [`starter/vars.yml`](starter/vars.yml): the listing from the lesson
- [`check.json`](check.json): how `./check` runs and checks this lab

## Steps

1. Go to the starter: `cd labs/m04l01/m04l01-02/starter`
2. Read `vars.yml`.
3. Edit `vars.yml` and check it: `ansible-playbook --syntax-check vars.yml`.
4. Check it from the repository root: `./check m04l01-02`.

## How to check

`./check m04l01-02` copies `starter/` into a scratch directory and runs `ansible-playbook --syntax-check vars.yml` there, the way the site's lab sandbox does: that directory is the working directory and `HOME`, `LANG=C.UTF-8`, `TZ=UTC`, a limit of 10 seconds and 256 KiB of output per stream.

This is a checker lab: it runs `ansible-playbook --syntax-check` against localhost: it parses the playbook and what it includes without running any task. The site shows the checker's report without grading; `./check` passes when the checker finds no errors.

---

[Open the lesson on LearnSome.tech](https://learnsome.tech/learn/ansible-course/m04l01) · [All labs of this lesson](../README.md) · [Course README](../../../README.md)
