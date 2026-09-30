# m02l02-03 · Variables for every host, in group vars all

**Lesson:** [Host Groups And Host Variables](https://learnsome.tech/learn/ansible-course/m02l02) (lesson 2.2, module 2: Inventory And Targets) · Pro  
**Check:** Checker

## Goal

You can attach variables to a group or to a single host using the group vars and host vars directories, predict which value wins when several apply, and read the resolved set of variables for any host without running a play.

In the lesson: The first file lives in a directory called group vars, in a file named after a group. This one is named after the group all, so it applies to every host. Start with a comment saying what this file is for, then two values. There is no registration step anywhere: the file name is the mechanism. A file named after a group attaches its contents to that group, and Ansible finds it by looking beside the playbook and beside the inventory. That convention is doing a lot of work quietly, which is wonderful when you know it and baffling when you do not.

## Files

- [`starter/all.yml`](starter/all.yml): the listing from the lesson
- [`check.json`](check.json): how `./check` runs and checks this lab

## Steps

1. Go to the starter: `cd labs/m02l02/m02l02-03/starter`
2. Read `all.yml` the way the lesson builds it:
   - Lines 1–2: a comment saying what this file is for
   - Lines 3–4: two values
3. Notes from the lesson:
   - Line 1: the directory name and the group name are the whole mechanism
4. Edit `all.yml` and check it: `yamllint all.yml`.
5. Check it from the repository root: `./check m02l02-03`.
6. The site offers these commands for this lab; the first is the default, and the only one graded. Run another with `./check m02l02-03 --command=<id>`:
   - `lint` (Lint): `yamllint -d relaxed all.yml`
   - `strict` (Lint strictly): `yamllint all.yml`

## How to check

`./check m02l02-03` copies `starter/` into a scratch directory and runs `yamllint all.yml` there, the way the site's lab sandbox does: that directory is the working directory and `HOME`, `LANG=C.UTF-8`, `TZ=UTC`, a limit of 10 seconds and 256 KiB of output per stream.

This is a checker lab: it lints the YAML with yamllint's `relaxed` rules: it passes when there are no errors. The site shows the checker's report without grading; `./check` passes when the checker finds no errors.

---

[Open the lesson on LearnSome.tech](https://learnsome.tech/learn/ansible-course/m02l02) · [All labs of this lesson](../README.md) · [Course README](../../../README.md)
