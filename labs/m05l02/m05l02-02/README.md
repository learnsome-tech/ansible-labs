# m05l02-02 · Call a role from a play

**Lesson:** [Writing A Role](https://learnsome.tech/learn/ansible-course/m05l02) (lesson 5.2, module 5: Roles And Collections) · Pro  
**Check:** Checker

## Goal

You can write a small role and include it from a playbook.

In the lesson: This play delegates its work to the web role and passes one variable named site name. The role can use that value in tasks or templates without the play knowing its internal file names. Keep the play focused on target selection and role inputs. Keep the role focused on the end state it owns. That boundary makes it easier to compose several roles in a larger deployment.

## Files

- [`starter/ansible.cfg`](starter/ansible.cfg)
- [`starter/inventory`](starter/inventory)
- [`starter/roles/web/README.md`](starter/roles/web/README.md)
- [`starter/run.sh`](starter/run.sh): the command the lesson ran
- [`starter/site.yml`](starter/site.yml): the listing from the lesson
- [`check.json`](check.json): how `./check` runs and checks this lab

## Steps

1. Go to the starter: `cd labs/m05l02/m05l02-02/starter`
2. Read `site.yml`.
3. Edit `site.yml` and check it: `ansible-playbook --syntax-check site.yml`.
4. Check it from the repository root: `./check m05l02-02`.
5. The site offers these commands for this lab; the first is the default, and the only one graded. Run another with `./check m05l02-02 --command=<id>`:
   - `syntax-check` (Syntax check): `ansible-playbook --syntax-check site.yml`
   - `list-tasks` (List tasks): `ansible-playbook --list-tasks site.yml`
   - `list-hosts` (List hosts): `ansible-playbook --list-hosts site.yml`

## How to check

`./check m05l02-02` copies `starter/` into a scratch directory and runs `ansible-playbook --syntax-check site.yml` there, the way the site's lab sandbox does: that directory is the working directory and `HOME`, `LANG=C.UTF-8`, `TZ=UTC`, a limit of 10 seconds and 256 KiB of output per stream.

This is a checker lab: it runs `ansible-playbook --syntax-check` against localhost: it parses the playbook and what it includes without running any task. The site shows the checker's report without grading; `./check` passes when the checker finds no errors.

---

[Open the lesson on LearnSome.tech](https://learnsome.tech/learn/ansible-course/m05l02) · [All labs of this lesson](../README.md) · [Course README](../../../README.md)
