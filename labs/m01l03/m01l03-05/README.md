# m01l03-05 · A better test than a version string

**Lesson:** [Installing Ansible](https://learnsome.tech/learn/ansible-course/m01l03) (lesson 1.3, module 1: Introduction And Setup) · Free  
**Check:** Checker

## Goal

You can install Ansible into an isolated Python environment, say what the core engine gives you and what the community package adds on top, pin the version for a team, and prove the control node works with a playbook rather than a version string.

In the lesson: A version string proves the command exists. It does not prove the whole path works. This small playbook does. It targets every host in the inventory, and this time gathering facts is switched on, which means before any task runs Ansible interrogates each host and collects several hundred pieces of information about it. Then one task that prints two of those values. The double curly braces mark a value that is looked up when the task runs rather than text to print literally, and a whole lesson later in the course is about what goes between them. For now, what matters is that filling them in requires reaching the host, running Python there, and getting data back.

## Files

- [`starter/ansible.cfg`](starter/ansible.cfg)
- [`starter/check.yml`](starter/check.yml): the listing from the lesson
- [`starter/inventory`](starter/inventory)
- [`starter/requirements.txt`](starter/requirements.txt)
- [`starter/run.sh`](starter/run.sh): the command the lesson ran
- [`check.json`](check.json): how `./check` runs and checks this lab

## Steps

1. Go to the starter: `cd labs/m01l03/m01l03-05/starter`
2. Read `check.yml` the way the lesson builds it:
   - Lines 1–4: gathering facts is switched on
   - Lines 5–8: one task that prints
3. Notes from the lesson:
   - Line 8: double curly braces: a value looked up when the task runs
4. Edit `check.yml` and check it: `ansible-playbook --syntax-check check.yml`.
5. Check it from the repository root: `./check m01l03-05`.
6. The site offers these commands for this lab; the first is the default, and the only one graded. Run another with `./check m01l03-05 --command=<id>`:
   - `syntax-check` (Syntax check): `ansible-playbook --syntax-check check.yml`
   - `list-tasks` (List tasks): `ansible-playbook --list-tasks check.yml`
   - `list-hosts` (List hosts): `ansible-playbook --list-hosts check.yml`

## How to check

`./check m01l03-05` copies `starter/` into a scratch directory and runs `ansible-playbook --syntax-check check.yml` there, the way the site's lab sandbox does: that directory is the working directory and `HOME`, `LANG=C.UTF-8`, `TZ=UTC`, a limit of 10 seconds and 256 KiB of output per stream.

This is a checker lab: it runs `ansible-playbook --syntax-check` against localhost: it parses the playbook and what it includes without running any task. The site shows the checker's report without grading; `./check` passes when the checker finds no errors.

---

[Open the lesson on LearnSome.tech](https://learnsome.tech/learn/ansible-course/m01l03) · [All labs of this lesson](../README.md) · [Course README](../../../README.md)
