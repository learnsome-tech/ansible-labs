# m03l04-02 · A file whose change is visible

**Lesson:** [Check Mode And Diff](https://learnsome.tech/learn/ansible-course/m03l04) (lesson 3.4, module 3: Playbooks, Plays And Tasks) · Pro  
**Check:** Checker

## Goal

You can preview a playbook with check mode and inspect proposed file changes with diff output.

In the lesson: This play writes one relative file, which makes it safe for a rehearsal. The copy module knows the requested content and destination, so it can report a pending change in check mode. The mode is part of the declared state as well. If the file already exists with different content, diff mode can show the text that would be replaced. Keep previews focused: a small play with a clear task name is much easier to approve than a large deployment whose output mixes unrelated changes.

## Files

- [`starter/ansible.cfg`](starter/ansible.cfg)
- [`starter/inventory`](starter/inventory)
- [`starter/preview.yml`](starter/preview.yml): the listing from the lesson
- [`starter/run.sh`](starter/run.sh): the command the lesson ran
- [`check.json`](check.json): how `./check` runs and checks this lab

## Steps

1. Go to the starter: `cd labs/m03l04/m03l04-02/starter`
2. Read `preview.yml`.
3. Edit `preview.yml` and check it: `ansible-playbook --syntax-check preview.yml`.
4. Check it from the repository root: `./check m03l04-02`.

## How to check

`./check m03l04-02` copies `starter/` into a scratch directory and runs `ansible-playbook --syntax-check preview.yml` there, the way the site's lab sandbox does: that directory is the working directory and `HOME`, `LANG=C.UTF-8`, `TZ=UTC`, a limit of 10 seconds and 256 KiB of output per stream.

This is a checker lab: it runs `ansible-playbook --syntax-check` against localhost: it parses the playbook and what it includes without running any task. The site shows the checker's report without grading; `./check` passes when the checker finds no errors.

---

[Open the lesson on LearnSome.tech](https://learnsome.tech/learn/ansible-course/m03l04) · [All labs of this lesson](../README.md) · [Course README](../../../README.md)
