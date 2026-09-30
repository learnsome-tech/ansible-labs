# m03l03-02 · Declare a file state

**Lesson:** [Modules And Idempotency](https://learnsome.tech/learn/ansible-course/m03l03) (lesson 3.3, module 3: Playbooks, Plays And Tasks) · Pro  
**Check:** Checker

## Goal

You can choose a module for a state change and explain why repeating an idempotent task is safe.

In the lesson: This play declares one small state: marker dot txt contains a known line and has a known mode. The copy module can check both pieces. On a new workspace it creates the file. On a later run it reads the existing content and metadata, then leaves the file alone if they already match. That comparison is what makes the task idempotent. The module name is fully qualified, which removes ambiguity when collections provide similarly named modules. Full names also make linting and code review easier.

## Files

- [`starter/ansible.cfg`](starter/ansible.cfg)
- [`starter/inventory`](starter/inventory)
- [`starter/run.sh`](starter/run.sh): the command the lesson ran
- [`starter/state.yml`](starter/state.yml): the listing from the lesson
- [`check.json`](check.json): how `./check` runs and checks this lab

## Steps

1. Go to the starter: `cd labs/m03l03/m03l03-02/starter`
2. Read `state.yml`.
3. Notes from the lesson:
   - Line 8: copy checks content before writing
4. Edit `state.yml` and check it: `ansible-playbook --syntax-check state.yml`.
5. Check it from the repository root: `./check m03l03-02`.
6. The site offers these commands for this lab; the first is the default, and the only one graded. Run another with `./check m03l03-02 --command=<id>`:
   - `syntax-check` (Syntax check): `ansible-playbook --syntax-check state.yml`
   - `list-tasks` (List tasks): `ansible-playbook --list-tasks state.yml`
   - `list-hosts` (List hosts): `ansible-playbook --list-hosts state.yml`

## How to check

`./check m03l03-02` copies `starter/` into a scratch directory and runs `ansible-playbook --syntax-check state.yml` there, the way the site's lab sandbox does: that directory is the working directory and `HOME`, `LANG=C.UTF-8`, `TZ=UTC`, a limit of 10 seconds and 256 KiB of output per stream.

This is a checker lab: it runs `ansible-playbook --syntax-check` against localhost: it parses the playbook and what it includes without running any task. The site shows the checker's report without grading; `./check` passes when the checker finds no errors.

---

[Open the lesson on LearnSome.tech](https://learnsome.tech/learn/ansible-course/m03l03) · [All labs of this lesson](../README.md) · [Course README](../../../README.md)
