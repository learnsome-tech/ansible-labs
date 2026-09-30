# m02l02-05 · Variables for one host

**Lesson:** [Host Groups And Host Variables](https://learnsome.tech/learn/ansible-course/m02l02) (lesson 2.2, module 2: Inventory And Targets) · Pro  
**Check:** Checker

## Goal

You can attach variables to a group or to a single host using the group vars and host vars directories, predict which value wins when several apply, and read the resolved set of variables for any host without running a play.

In the lesson: The third file does the same trick one level down. The directory is host vars rather than group vars, and the file is named for a single host, spelled exactly as the inventory spells it. This is where you record the one host that is different: the one with the larger disk, the one still on the old port, the one in the other data centre. Being able to write that down, in a file whose name says which machine it is about, is much better than the alternative, which is a condition buried somewhere in a playbook that nobody finds for a year.

## Files

- [`starter/web1.example.com.yml`](starter/web1.example.com.yml): the listing from the lesson
- [`check.json`](check.json): how `./check` runs and checks this lab

## Steps

1. Go to the starter: `cd labs/m02l02/m02l02-05/starter`
2. Read `web1.example.com.yml` the way the lesson builds it:
   - Lines 1–3: one host that is different
3. Notes from the lesson:
   - Line 1: host vars, named for the host exactly as the inventory spells it
4. Edit `web1.example.com.yml` and check it: `yamllint web1.example.com.yml`.
5. Check it from the repository root: `./check m02l02-05`.

## How to check

`./check m02l02-05` copies `starter/` into a scratch directory and runs `yamllint web1.example.com.yml` there, the way the site's lab sandbox does: that directory is the working directory and `HOME`, `LANG=C.UTF-8`, `TZ=UTC`, a limit of 10 seconds and 256 KiB of output per stream.

This is a checker lab: it lints the YAML with yamllint's `relaxed` rules: it passes when there are no errors. The site shows the checker's report without grading; `./check` passes when the checker finds no errors.

---

[Open the lesson on LearnSome.tech](https://learnsome.tech/learn/ansible-course/m02l02) · [All labs of this lesson](../README.md) · [Course README](../../../README.md)
