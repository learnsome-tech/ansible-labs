# m02l01-06 · The same inventory in the YAML form

**Lesson:** [The Static Inventory File](https://learnsome.tech/learn/ansible-course/m02l01) (lesson 2.1, module 2: Inventory And Targets) · Pro  
**Check:** Checker

## Goal

You can write a static inventory in either the ini or the YAML form, declare groups and groups of groups, expand a host range, and select any subset of hosts with a pattern before running anything against them.

In the lesson: The same inventory written in the other supported format. It starts from the group called all, which was implicit in the previous file and is explicit here. Under it, hosts, with their settings nested rather than trailing on the same line. Then children, which here holds a group, which itself holds children, and those hold hosts. The nesting you drew a moment ago is now visible in the file itself. One piece of syntax catches everybody: a host with no settings still ends in a colon, because it is a mapping key with nothing under it. Leave the colon off and the file will not parse as you expect.

## Files

- [`starter/ansible.cfg`](starter/ansible.cfg)
- [`starter/inventory`](starter/inventory)
- [`starter/inventory.yml`](starter/inventory.yml): the listing from the lesson
- [`starter/run.sh`](starter/run.sh): the command the lesson ran
- [`check.json`](check.json): how `./check` runs and checks this lab

## Steps

1. Go to the starter: `cd labs/m02l01/m02l01-06/starter`
2. Read `inventory.yml` the way the lesson builds it:
   - Lines 1–5: starts from the group called all
   - Lines 6–8: children, which here holds a group
   - Lines 9–15: and those hold hosts
3. Notes from the lesson:
   - Line 11: a host with no settings still ends in a colon
4. Edit `inventory.yml` and check it: `yamllint inventory.yml`.
5. Check it from the repository root: `./check m02l01-06`.

## How to check

`./check m02l01-06` copies `starter/` into a scratch directory and runs `yamllint inventory.yml` there, the way the site's lab sandbox does: that directory is the working directory and `HOME`, `LANG=C.UTF-8`, `TZ=UTC`, a limit of 10 seconds and 256 KiB of output per stream.

This is a checker lab: it lints the YAML with yamllint's `relaxed` rules: it passes when there are no errors. The site shows the checker's report without grading; `./check` passes when the checker finds no errors.

---

[Open the lesson on LearnSome.tech](https://learnsome.tech/learn/ansible-course/m02l01) · [All labs of this lesson](../README.md) · [Course README](../../../README.md)
