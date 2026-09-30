# m02l03-05 · What a cloud plugin configuration looks like

**Lesson:** [Dynamic Inventory](https://learnsome.tech/learn/ansible-course/m02l03) (lesson 2.3, module 2: Inventory And Targets) · Pro  
**Check:** Checker

## Goal

You can explain why a written host list fails in an elastic environment, read and run an inventory script, prefer an inventory plugin to a script, and build groups automatically from host attributes with keyed groups.

In the lesson: This is the shape you will actually write. The first key names the plugin, which here is the one for a well known cloud provider and comes from a collection you install separately. Then settings that say which region and which instances to consider, so you are not pulling an entire account every run. Then the part that earns its keep: build groups out of attributes the provider already stores. Keyed groups make one group per distinct value of whatever you point them at, named with the prefix you give. Tag your instances properly once, and your inventory groups itself forever. This panel is not executed by the course build, since it needs a cloud account and a network.

## Files

- [`starter/NOT-RUNNABLE-HERE.txt`](starter/NOT-RUNNABLE-HERE.txt)
- [`starter/ansible.cfg`](starter/ansible.cfg)
- [`starter/aws_ec2.yml`](starter/aws_ec2.yml): the listing from the lesson
- [`starter/dynamic.py`](starter/dynamic.py)
- [`starter/inventory`](starter/inventory)
- [`starter/run.sh`](starter/run.sh): the command the lesson ran
- [`check.json`](check.json): how `./check` runs and checks this lab

## Steps

1. Go to the starter: `cd labs/m02l03/m02l03-05/starter`
2. Read `aws_ec2.yml` the way the lesson builds it:
   - Lines 1–3: names the plugin
   - Lines 4–7: which region and which instances
   - Lines 8–12: build groups out of attributes
3. Notes from the lesson:
   - Line 8: keyed groups: one group per distinct value, named by prefix
4. Edit `aws_ec2.yml` and check it: `yamllint aws_ec2.yml`.
5. Check it from the repository root: `./check m02l03-05`.
6. The site offers these commands for this lab; the first is the default, and the only one graded. Run another with `./check m02l03-05 --command=<id>`:
   - `lint` (Lint): `yamllint -d relaxed aws_ec2.yml`
   - `strict` (Lint strictly): `yamllint aws_ec2.yml`

## How to check

`./check m02l03-05` copies `starter/` into a scratch directory and runs `yamllint aws_ec2.yml` there, the way the site's lab sandbox does: that directory is the working directory and `HOME`, `LANG=C.UTF-8`, `TZ=UTC`, a limit of 10 seconds and 256 KiB of output per stream.

This is a checker lab: it lints the YAML with yamllint's `relaxed` rules: it passes when there are no errors. The site shows the checker's report without grading; `./check` passes when the checker finds no errors.

---

[Open the lesson on LearnSome.tech](https://learnsome.tech/learn/ansible-course/m02l03) · [All labs of this lesson](../README.md) · [Course README](../../../README.md)
