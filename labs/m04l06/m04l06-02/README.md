# m04l06-02 · A block with recovery

**Lesson:** [Error Handling With Block, Rescue And Always](https://learnsome.tech/learn/ansible-course/m04l06) (lesson 4.6, module 4: Variables, Facts And Logic) · Pro  
**Check:** Checker

## Goal

You can group risky tasks and provide rescue and always actions for predictable recovery.

In the lesson: This example shows the three sections without manufacturing a machine dependent failure. Block holds the ordinary work. Rescue holds the response if a task in that block fails. Always holds work that must happen in either case, such as cleanup or a status message. The sections are lists of tasks, so they use the same task syntax as the rest of a play. In production, keep the rescue response safe and make sure it does not hide a serious problem that should still stop the deployment.

## Files

- [`starter/ansible.cfg`](starter/ansible.cfg)
- [`starter/block.yml`](starter/block.yml): the listing from the lesson
- [`starter/inventory`](starter/inventory)
- [`starter/run.sh`](starter/run.sh): the command the lesson ran
- [`check.json`](check.json): how `./check` runs and checks this lab

## Steps

1. Go to the starter: `cd labs/m04l06/m04l06-02/starter`
2. Read `block.yml`.
3. Edit `block.yml` and check it: `ansible-playbook --syntax-check block.yml`.
4. Check it from the repository root: `./check m04l06-02`.
5. The site offers these commands for this lab; the first is the default, and the only one graded. Run another with `./check m04l06-02 --command=<id>`:
   - `syntax-check` (Syntax check): `ansible-playbook --syntax-check block.yml`
   - `list-tasks` (List tasks): `ansible-playbook --list-tasks block.yml`
   - `list-hosts` (List hosts): `ansible-playbook --list-hosts block.yml`

## How to check

`./check m04l06-02` copies `starter/` into a scratch directory and runs `ansible-playbook --syntax-check block.yml` there, the way the site's lab sandbox does: that directory is the working directory and `HOME`, `LANG=C.UTF-8`, `TZ=UTC`, a limit of 10 seconds and 256 KiB of output per stream.

This is a checker lab: it runs `ansible-playbook --syntax-check` against localhost: it parses the playbook and what it includes without running any task. The site shows the checker's report without grading; `./check` passes when the checker finds no errors.

---

[Open the lesson on LearnSome.tech](https://learnsome.tech/learn/ansible-course/m04l06) · [All labs of this lesson](../README.md) · [Course README](../../../README.md)
