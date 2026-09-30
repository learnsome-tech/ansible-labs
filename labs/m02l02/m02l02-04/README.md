# m02l02-04 · Variables for one group

**Lesson:** [Host Groups And Host Variables](https://learnsome.tech/learn/ansible-course/m02l02) (lesson 2.2, module 2: Inventory And Targets) · Pro  
**Check:** Checker

## Goal

You can attach variables to a group or to a single host using the group vars and host vars directories, predict which value wins when several apply, and read the resolved set of variables for any host without running a play.

In the lesson: The second file is named after the webservers group, so its contents attach to those three hosts and to nothing else. It sets two values. One of them uses the same name as before, and that is a deliberate collision, because the whole point of this lesson is what happens when two files disagree. The other is a second value that only web servers have, which the database will never see. Notice what is not here: no condition, no if statement, no mention of which hosts. Membership of the group is the condition.

## Files

- [`starter/all.yml`](starter/all.yml)
- [`starter/webservers.yml`](starter/webservers.yml): the listing from the lesson
- [`check.json`](check.json): how `./check` runs and checks this lab

## Steps

1. Go to the starter: `cd labs/m02l02/m02l02-04/starter`
2. Read `webservers.yml` the way the lesson builds it:
   - Lines 1–3: the same name as before
   - Lines 4: a second value that only web servers have
3. Notes from the lesson:
   - Line 3: deliberate collision: a nearer group wins over all
4. Edit `webservers.yml` and check it: `yamllint webservers.yml`.
5. Check it from the repository root: `./check m02l02-04`.

## How to check

`./check m02l02-04` copies `starter/` into a scratch directory and runs `yamllint webservers.yml` there, the way the site's lab sandbox does: that directory is the working directory and `HOME`, `LANG=C.UTF-8`, `TZ=UTC`, a limit of 10 seconds and 256 KiB of output per stream.

This is a checker lab: it lints the YAML with yamllint's `relaxed` rules: it passes when there are no errors. The site shows the checker's report without grading; `./check` passes when the checker finds no errors.

---

[Open the lesson on LearnSome.tech](https://learnsome.tech/learn/ansible-course/m02l02) · [All labs of this lesson](../README.md) · [Course README](../../../README.md)
