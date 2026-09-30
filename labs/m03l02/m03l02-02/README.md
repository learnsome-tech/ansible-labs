# m03l02-02 · Create a directory and a file

**Lesson:** [Writing Your First Playbook](https://learnsome.tech/learn/ansible-course/m03l02) (lesson 3.2, module 3: Playbooks, Plays And Tasks) · Pro  
**Check:** Checker

## Goal

You can write a local playbook that creates a directory and a file in its workspace.

In the lesson: Here is a complete first playbook. It targets localhost through the local connection and skips facts. The first task uses the file module to declare that a directory named site should exist. Its mode is written as text so YAML does not treat the leading zero as a number. The second task uses copy to declare the content and destination of an index page. Notice that the destination is inside the directory made by the first task. The escaped line break in content is part of the file being written. Each task says what should exist, rather than giving a sequence of shell commands to make it happen.

## Files

- [`starter/ansible.cfg`](starter/ansible.cfg)
- [`starter/inventory`](starter/inventory)
- [`starter/run.sh`](starter/run.sh): the command the lesson ran
- [`starter/site.yml`](starter/site.yml): the listing from the lesson
- [`check.json`](check.json): how `./check` runs and checks this lab

## Steps

1. Go to the starter: `cd labs/m03l02/m03l02-02/starter`
2. Read `site.yml`.
3. Notes from the lesson:
   - Line 9: directory is the declared end state
4. Edit `site.yml` and check it: `ansible-playbook --syntax-check site.yml`.
5. Check it from the repository root: `./check m03l02-02`.

## How to check

`./check m03l02-02` copies `starter/` into a scratch directory and runs `ansible-playbook --syntax-check site.yml` there, the way the site's lab sandbox does: that directory is the working directory and `HOME`, `LANG=C.UTF-8`, `TZ=UTC`, a limit of 10 seconds and 256 KiB of output per stream.

This is a checker lab: it runs `ansible-playbook --syntax-check` against localhost: it parses the playbook and what it includes without running any task. The site shows the checker's report without grading; `./check` passes when the checker finds no errors.

---

[Open the lesson on LearnSome.tech](https://learnsome.tech/learn/ansible-course/m03l02) · [All labs of this lesson](../README.md) · [Course README](../../../README.md)
