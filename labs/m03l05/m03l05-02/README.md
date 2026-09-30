# m03l05-02 · Notify a local handler

**Lesson:** [Handlers And Notify](https://learnsome.tech/learn/ansible-course/m03l05) (lesson 3.5, module 3: Playbooks, Plays And Tasks) · Pro  
**Check:** Checker

## Goal

You can trigger a handler only when a task changes and explain when handlers run.

In the lesson: The task writes a relative configuration file and names a handler in its notify field. The handler is declared later under the handlers key. It is an ordinary task with a name and a module, but Ansible holds it until the end of the play. On a first run, the configuration changes, so the handler writes a small reload log. On a second identical run, the copy task reports okay and the handler is not called. The handler name is a string, so spelling and capitalization must match exactly between notify and the handler declaration.

## Files

- [`starter/ansible.cfg`](starter/ansible.cfg)
- [`starter/handler.yml`](starter/handler.yml): the listing from the lesson
- [`starter/inventory`](starter/inventory)
- [`starter/run.sh`](starter/run.sh): the command the lesson ran
- [`check.json`](check.json): how `./check` runs and checks this lab

## Steps

1. Go to the starter: `cd labs/m03l05/m03l05-02/starter`
2. Read `handler.yml`.
3. Notes from the lesson:
   - Line 15: handlers are tasks held for later
4. Edit `handler.yml` and check it: `ansible-playbook --syntax-check handler.yml`.
5. Check it from the repository root: `./check m03l05-02`.
6. The site offers these commands for this lab; the first is the default, and the only one graded. Run another with `./check m03l05-02 --command=<id>`:
   - `syntax-check` (Syntax check): `ansible-playbook --syntax-check handler.yml`
   - `list-tasks` (List tasks): `ansible-playbook --list-tasks handler.yml`
   - `list-hosts` (List hosts): `ansible-playbook --list-hosts handler.yml`

## How to check

`./check m03l05-02` copies `starter/` into a scratch directory and runs `ansible-playbook --syntax-check handler.yml` there, the way the site's lab sandbox does: that directory is the working directory and `HOME`, `LANG=C.UTF-8`, `TZ=UTC`, a limit of 10 seconds and 256 KiB of output per stream.

This is a checker lab: it runs `ansible-playbook --syntax-check` against localhost: it parses the playbook and what it includes without running any task. The site shows the checker's report without grading; `./check` passes when the checker finds no errors.

---

[Open the lesson on LearnSome.tech](https://learnsome.tech/learn/ansible-course/m03l05) · [All labs of this lesson](../README.md) · [Course README](../../../README.md)
