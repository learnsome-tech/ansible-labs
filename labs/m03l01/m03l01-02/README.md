# m03l01-02 · The smallest useful play

**Lesson:** [Playbook Syntax And YAML](https://learnsome.tech/learn/ansible-course/m03l01) (lesson 3.1, module 3: Playbooks, Plays And Tasks) · Pro  
**Check:** Checker

## Goal

You can read a playbook as YAML and explain how plays and tasks fit together.

In the lesson: This is the smallest useful play. The first line starts a YAML list, so the dash means one play begins. The play has a name for humans, a hosts pattern that selects localhost, and a local connection so no secure shell is needed. Facts are disabled because this example does not use them. Under tasks is another list. Its item has a name and then the debug module with a message argument. Indentation is the structure here. The task is nested under tasks, and the module arguments are nested under the module name. If the spaces are wrong, the data tree changes and Ansible will reject or misread the file.

## Files

- [`starter/ansible.cfg`](starter/ansible.cfg)
- [`starter/hello.yml`](starter/hello.yml): the listing from the lesson
- [`starter/inventory`](starter/inventory)
- [`starter/run.sh`](starter/run.sh): the command the lesson ran
- [`check.json`](check.json): how `./check` runs and checks this lab

## Steps

1. Go to the starter: `cd labs/m03l01/m03l01-02/starter`
2. Read `hello.yml`.
3. Notes from the lesson:
   - Line 3: the host pattern selects the inventory target
4. Edit `hello.yml` and check it: `ansible-playbook --syntax-check hello.yml`.
5. Check it from the repository root: `./check m03l01-02`.

## How to check

`./check m03l01-02` copies `starter/` into a scratch directory and runs `ansible-playbook --syntax-check hello.yml` there, the way the site's lab sandbox does: that directory is the working directory and `HOME`, `LANG=C.UTF-8`, `TZ=UTC`, a limit of 10 seconds and 256 KiB of output per stream.

This is a checker lab: it runs `ansible-playbook --syntax-check` against localhost: it parses the playbook and what it includes without running any task. The site shows the checker's report without grading; `./check` passes when the checker finds no errors.

---

[Open the lesson on LearnSome.tech](https://learnsome.tech/learn/ansible-course/m03l01) · [All labs of this lesson](../README.md) · [Course README](../../../README.md)
