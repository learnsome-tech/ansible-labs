# m01l01-06 · The same intent, as a playbook

**Lesson:** [What Configuration Management Is](https://learnsome.tech/learn/ansible-course/m01l01) (lesson 1.1, module 1: Introduction And Setup) · Free  
**Check:** Checker

## Goal

You can say what configuration management is, why it comes after provisioning rather than instead of it, and demonstrate the difference between a script that repeats its work and a playbook that does not.

In the lesson: The same intent, written for Ansible. Take the play at the top first: a name for it, the hosts it applies to, and a list of tasks. Then the first task, which asks for a directory. Notice the word state rather than an action verb, and notice that the task also carries a name, which is how it will identify itself when it runs. Then the second task, which asks for a line to be present in a file, creating the file if it is missing. Nowhere does this file say append, or make, or check. It describes a finished condition and leaves the question of how to reach it as the module's problem.

## Files

- [`starter/ansible.cfg`](starter/ansible.cfg)
- [`starter/inventory`](starter/inventory)
- [`starter/run.sh`](starter/run.sh): the command the lesson ran
- [`starter/setup.sh`](starter/setup.sh)
- [`starter/site.yml`](starter/site.yml): the listing from the lesson
- [`check.json`](check.json): how `./check` runs and checks this lab

## Steps

1. Go to the starter: `cd labs/m01l01/m01l01-06/starter`
2. Read `site.yml` the way the lesson builds it:
   - Lines 1–5: the play at the top
   - Lines 6–10: the first task
   - Lines 11–17: the second task
3. Notes from the lesson:
   - Line 9: state, not action: the directory should be a directory
   - Line 15: the line should be present; how is the module's problem
4. Edit `site.yml` and check it: `ansible-playbook --syntax-check site.yml`.
5. Check it from the repository root: `./check m01l01-06`.
6. The site offers these commands for this lab; the first is the default, and the only one graded. Run another with `./check m01l01-06 --command=<id>`:
   - `syntax-check` (Syntax check): `ansible-playbook --syntax-check site.yml`
   - `list-tasks` (List tasks): `ansible-playbook --list-tasks site.yml`
   - `list-hosts` (List hosts): `ansible-playbook --list-hosts site.yml`

## How to check

`./check m01l01-06` copies `starter/` into a scratch directory and runs `ansible-playbook --syntax-check site.yml` there, the way the site's lab sandbox does: that directory is the working directory and `HOME`, `LANG=C.UTF-8`, `TZ=UTC`, a limit of 10 seconds and 256 KiB of output per stream.

This is a checker lab: it runs `ansible-playbook --syntax-check` against localhost: it parses the playbook and what it includes without running any task. The site shows the checker's report without grading; `./check` passes when the checker finds no errors.

---

[Open the lesson on LearnSome.tech](https://learnsome.tech/learn/ansible-course/m01l01) · [All labs of this lesson](../README.md) · [Course README](../../../README.md)
