# m02l03-07 · A plugin that builds groups from attributes

**Lesson:** [Dynamic Inventory](https://learnsome.tech/learn/ansible-course/m02l03) (lesson 2.3, module 2: Inventory And Targets) · Pro  
**Check:** Checker

## Goal

You can explain why a written host list fails in an elastic environment, read and run an inventory script, prefer an inventory plugin to a script, and build groups automatically from host attributes with keyed groups.

In the lesson: This is the constructed plugin, which ships with the engine, and it does exactly what the cloud plugin did: it reads attributes and makes groups. Two rules, one per attribute, each naming the attribute to read and the prefix to put in front of the group name. The setting above them says what to do about a host missing one of those attributes, and false here means skip it quietly rather than fail the run, which is almost always what you want when hosts are described by different teams. Notice that this file names no hosts. It is a transformation applied to whatever inventory it is layered over.

## Files

- [`starter/ansible.cfg`](starter/ansible.cfg)
- [`starter/aws_ec2.yml`](starter/aws_ec2.yml)
- [`starter/constructed.yml`](starter/constructed.yml): the listing from the lesson
- [`starter/dynamic.py`](starter/dynamic.py)
- [`starter/inventory`](starter/inventory)
- [`starter/run.sh`](starter/run.sh): the command the lesson ran
- [`check.json`](check.json): how `./check` runs and checks this lab

## Steps

1. Go to the starter: `cd labs/m02l03/m02l03-07/starter`
2. Read `constructed.yml` the way the lesson builds it:
   - Lines 1–3: the constructed plugin
   - Lines 4–8: two rules
3. Notes from the lesson:
   - Line 3: strict false: a host missing the attribute is skipped, not an error
4. Edit `constructed.yml` and check it: `yamllint constructed.yml`.
5. Check it from the repository root: `./check m02l03-07`.
6. The site offers these commands for this lab; the first is the default, and the only one graded. Run another with `./check m02l03-07 --command=<id>`:
   - `lint` (Lint): `yamllint -d relaxed constructed.yml`
   - `strict` (Lint strictly): `yamllint constructed.yml`

## How to check

`./check m02l03-07` copies `starter/` into a scratch directory and runs `yamllint constructed.yml` there, the way the site's lab sandbox does: that directory is the working directory and `HOME`, `LANG=C.UTF-8`, `TZ=UTC`, a limit of 10 seconds and 256 KiB of output per stream.

This is a checker lab: it lints the YAML with yamllint's `relaxed` rules: it passes when there are no errors. The site shows the checker's report without grading; `./check` passes when the checker finds no errors.

---

[Open the lesson on LearnSome.tech](https://learnsome.tech/learn/ansible-course/m02l03) · [All labs of this lesson](../README.md) · [Course README](../../../README.md)
