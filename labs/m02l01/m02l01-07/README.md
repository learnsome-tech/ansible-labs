# m02l01-07 · The same tree, from the other file

**Lesson:** [The Static Inventory File](https://learnsome.tech/learn/ansible-course/m02l01) (lesson 2.1, module 2: Inventory And Targets) · Pro  
**Check:** Checker

## Goal

You can write a static inventory in either the ini or the YAML form, declare groups and groups of groups, expand a host range, and select any subset of hosts with a pattern before running anything against them.

In the lesson: Point the same command at it, naming the file with the inventory flag because it is not the default any more, and the tree that comes back is identical. That is the useful fact here. The two formats are two spellings of one thing, and everything else in this course works the same way whichever you choose. Ranges expand in both. Groups of groups nest in both. The graph is the ground truth in both. So the choice between them is about the humans reading the file, not about capability.

## Files

- [`starter/ansible.cfg`](starter/ansible.cfg)
- [`starter/inventory`](starter/inventory)
- [`starter/inventory.yml`](starter/inventory.yml): the listing from the lesson
- [`starter/run.sh`](starter/run.sh): the command the lesson ran
- [`check.json`](check.json): how `./check` runs and checks this lab

## Steps

1. Go to the starter: `cd labs/m02l01/m02l01-07/starter`
2. Read `inventory.yml`.
3. Edit `inventory.yml` and check it: `yamllint inventory.yml`.
4. Check it from the repository root: `./check m02l01-07`.
5. The site offers these commands for this lab; the first is the default, and the only one graded. Run another with `./check m02l01-07 --command=<id>`:
   - `lint` (Lint): `yamllint -d relaxed inventory.yml`
   - `strict` (Lint strictly): `yamllint inventory.yml`

## How to check

`./check m02l01-07` copies `starter/` into a scratch directory and runs `yamllint inventory.yml` there, the way the site's lab sandbox does: that directory is the working directory and `HOME`, `LANG=C.UTF-8`, `TZ=UTC`, a limit of 10 seconds and 256 KiB of output per stream.

This is a checker lab: it lints the YAML with yamllint's `relaxed` rules: it passes when there are no errors. The site shows the checker's report without grading; `./check` passes when the checker finds no errors.

---

[Open the lesson on LearnSome.tech](https://learnsome.tech/learn/ansible-course/m02l01) · [All labs of this lesson](../README.md) · [Course README](../../../README.md)
