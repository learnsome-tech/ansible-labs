# m05l03-02 · Record a collection dependency

**Lesson:** [Using Collections](https://learnsome.tech/learn/ansible-course/m05l03) (lesson 5.3, module 5: Roles And Collections) · Pro  
**Check:** Checker

## Goal

You can explain how collections namespace modules and other Ansible content.

In the lesson: This requirements file records one collection dependency and a version. The namespace is ansible and the collection name is posix. A real project may choose a version range or a pinned release according to its update policy. Keep this file beside the playbooks and roles that use the dependency, and install it in a controlled build step rather than fetching content during an important deployment.

## Files

- [`starter/requirements.yml`](starter/requirements.yml): the listing from the lesson
- [`check.json`](check.json): how `./check` runs and checks this lab

## Steps

1. Go to the starter: `cd labs/m05l03/m05l03-02/starter`
2. Read `requirements.yml`.
3. Edit `requirements.yml` and check it: `yamllint requirements.yml`.
4. Check it from the repository root: `./check m05l03-02`.

## How to check

`./check m05l03-02` copies `starter/` into a scratch directory and runs `yamllint requirements.yml` there, the way the site's lab sandbox does: that directory is the working directory and `HOME`, `LANG=C.UTF-8`, `TZ=UTC`, a limit of 10 seconds and 256 KiB of output per stream.

This is a checker lab: it lints the YAML with yamllint's `relaxed` rules: it passes when there are no errors. The site shows the checker's report without grading; `./check` passes when the checker finds no errors.

---

[Open the lesson on LearnSome.tech](https://learnsome.tech/learn/ansible-course/m05l03) · [All labs of this lesson](../README.md) · [Course README](../../../README.md)
