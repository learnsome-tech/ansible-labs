# m06l03-02 · Separate group data

**Lesson:** [Environment Specific Configuration](https://learnsome.tech/learn/ansible-course/m06l03) (lesson 6.3, module 6: Security And Practices) · Pro  
**Check:** Checker

## Goal

You can organize defaults and environment overrides without duplicating the playbook logic.

In the lesson: This group variable file gives staging its own name, port, and log level. A production file can use the same variable names with production values. The playbook and roles then refer to environment name, app port, and log level without branching on a hard coded environment string. Keep these files free of secrets, or encrypt the sensitive ones with Vault. The inventory selection remains the control that chooses which values enter a run.

## Files

- [`starter/staging.yml`](starter/staging.yml): the listing from the lesson
- [`check.json`](check.json): how `./check` runs and checks this lab

## Steps

1. Go to the starter: `cd labs/m06l03/m06l03-02/starter`
2. Read `staging.yml`.
3. Edit `staging.yml` and check it: `yamllint staging.yml`.
4. Check it from the repository root: `./check m06l03-02`.
5. The site offers these commands for this lab; the first is the default, and the only one graded. Run another with `./check m06l03-02 --command=<id>`:
   - `lint` (Lint): `yamllint -d relaxed staging.yml`
   - `strict` (Lint strictly): `yamllint staging.yml`

## How to check

`./check m06l03-02` copies `starter/` into a scratch directory and runs `yamllint staging.yml` there, the way the site's lab sandbox does: that directory is the working directory and `HOME`, `LANG=C.UTF-8`, `TZ=UTC`, a limit of 10 seconds and 256 KiB of output per stream.

This is a checker lab: it lints the YAML with yamllint's `relaxed` rules: it passes when there are no errors. The site shows the checker's report without grading; `./check` passes when the checker finds no errors.

---

[Open the lesson on LearnSome.tech](https://learnsome.tech/learn/ansible-course/m06l03) · [All labs of this lesson](../README.md) · [Course README](../../../README.md)
