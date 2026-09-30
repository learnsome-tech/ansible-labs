# m04l02-02 · Inspect a fact

**Lesson:** [Gathering Facts](https://learnsome.tech/learn/ansible-course/m04l02) (lesson 4.2, module 4: Variables, Facts And Logic) · Pro  
**Check:** Checker

## Goal

You can inspect gathered facts and use a fact safely in a task.

In the lesson: This play leaves fact gathering enabled and then asks debug to show the gathered host name. The ansible facts namespace is the stable place to look for facts. A fact can be absent or differ across operating systems, so write conditionals that account for the targets you support. For exploration, the setup module or a debug task can show you what is available. For production, use only the small set of facts your task actually needs and turn gathering off when none are required.

## Files

- [`starter/ansible.cfg`](starter/ansible.cfg)
- [`starter/facts.yml`](starter/facts.yml): the listing from the lesson
- [`starter/inventory`](starter/inventory)
- [`starter/run.sh`](starter/run.sh): the command the lesson ran
- [`check.json`](check.json): how `./check` runs and checks this lab

## Steps

1. Go to the starter: `cd labs/m04l02/m04l02-02/starter`
2. Read `facts.yml`.
3. Edit `facts.yml` and check it: `ansible-playbook --syntax-check facts.yml`.
4. Check it from the repository root: `./check m04l02-02`.
5. The site offers these commands for this lab; the first is the default, and the only one graded. Run another with `./check m04l02-02 --command=<id>`:
   - `syntax-check` (Syntax check): `ansible-playbook --syntax-check facts.yml`
   - `list-tasks` (List tasks): `ansible-playbook --list-tasks facts.yml`
   - `list-hosts` (List hosts): `ansible-playbook --list-hosts facts.yml`

## How to check

`./check m04l02-02` copies `starter/` into a scratch directory and runs `ansible-playbook --syntax-check facts.yml` there, the way the site's lab sandbox does: that directory is the working directory and `HOME`, `LANG=C.UTF-8`, `TZ=UTC`, a limit of 10 seconds and 256 KiB of output per stream.

This is a checker lab: it runs `ansible-playbook --syntax-check` against localhost: it parses the playbook and what it includes without running any task. The site shows the checker's report without grading; `./check` passes when the checker finds no errors.

---

[Open the lesson on LearnSome.tech](https://learnsome.tech/learn/ansible-course/m04l02) · [All labs of this lesson](../README.md) · [Course README](../../../README.md)
