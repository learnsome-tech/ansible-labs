# m05l04-02 · A reviewed role dependency

**Lesson:** [Ansible Galaxy](https://learnsome.tech/learn/ansible-course/m05l04) (lesson 5.4, module 5: Roles And Collections) · Pro  
**Check:** Checker

## Goal

You can use Galaxy concepts to find, install, and review reusable Ansible content.

In the lesson: This requirements file records a role by name and version. The example name is illustrative, so a real project should replace it with a role that has passed review. Keeping the version visible makes updates a deliberate change rather than an accidental result of the latest download. Review the role source, then run its tests or your own checks before allowing it into a shared automation path.

## Files

- [`starter/ansible.cfg`](starter/ansible.cfg)
- [`starter/inventory`](starter/inventory)
- [`starter/requirements.yml`](starter/requirements.yml): the listing from the lesson
- [`starter/run.sh`](starter/run.sh): the command the lesson ran
- [`check.json`](check.json): how `./check` runs and checks this lab

## Steps

1. Go to the starter: `cd labs/m05l04/m05l04-02/starter`
2. Read `requirements.yml`.
3. Edit `requirements.yml` and check it: `yamllint requirements.yml`.
4. Check it from the repository root: `./check m05l04-02`.

## How to check

`./check m05l04-02` copies `starter/` into a scratch directory and runs `yamllint requirements.yml` there, the way the site's lab sandbox does: that directory is the working directory and `HOME`, `LANG=C.UTF-8`, `TZ=UTC`, a limit of 10 seconds and 256 KiB of output per stream.

This is a checker lab: it lints the YAML with yamllint's `relaxed` rules: it passes when there are no errors. The site shows the checker's report without grading; `./check` passes when the checker finds no errors.

---

[Open the lesson on LearnSome.tech](https://learnsome.tech/learn/ansible-course/m05l04) · [All labs of this lesson](../README.md) · [Course README](../../../README.md)
