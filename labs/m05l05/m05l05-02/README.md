# m05l05-02 · A scenario names its phases

**Lesson:** [Testing With Molecule](https://learnsome.tech/learn/ansible-course/m05l05) (lesson 5.5, module 5: Roles And Collections) · Pro  
**Check:** Checker

## Goal

You can describe Molecule's role in testing automation and its limits on a single build machine.

In the lesson: This compact scenario names a default driver, one platform, Ansible as the provisioner, and Ansible as the verifier. A real scenario also has a converge playbook and verification tasks. The important idea is the separation of lifecycle phases. Creation prepares a target, convergence applies the role, verification checks observable state, and destruction cleans up. Keep verification focused on the role contract rather than on internal task order.

## Files

- [`starter/molecule.yml`](starter/molecule.yml): the listing from the lesson
- [`check.json`](check.json): how `./check` runs and checks this lab

## Steps

1. Go to the starter: `cd labs/m05l05/m05l05-02/starter`
2. Read `molecule.yml`.
3. Edit `molecule.yml` and check it: `yamllint molecule.yml`.
4. Check it from the repository root: `./check m05l05-02`.

## How to check

`./check m05l05-02` copies `starter/` into a scratch directory and runs `yamllint molecule.yml` there, the way the site's lab sandbox does: that directory is the working directory and `HOME`, `LANG=C.UTF-8`, `TZ=UTC`, a limit of 10 seconds and 256 KiB of output per stream.

This is a checker lab: it lints the YAML with yamllint's `relaxed` rules: it passes when there are no errors. The site shows the checker's report without grading; `./check` passes when the checker finds no errors.

---

[Open the lesson on LearnSome.tech](https://learnsome.tech/learn/ansible-course/m05l05) · [All labs of this lesson](../README.md) · [Course README](../../../README.md)
