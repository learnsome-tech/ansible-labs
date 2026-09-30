# m04l05-03 · Deploy the rendered file

**Lesson:** [Templates With Jinja](https://learnsome.tech/learn/ansible-course/m04l05) (lesson 4.5, module 4: Variables, Facts And Logic) · Pro  
**Check:** Checker

## Goal

You can render a Jinja template from variables and keep the template readable.

In the lesson: The play supplies two variables and uses the template module to render the file into the workspace. Source is the template path, and destination is the generated file. The module compares the rendered content with the existing destination, so a second run is okay when the values have not changed. In a project, a changed template often needs a reload, so add notify when the consumer must reread it. Keep source files under a templates directory so the role or playbook layout explains their purpose.

## Files

- [`starter/ansible.cfg`](starter/ansible.cfg)
- [`starter/inventory`](starter/inventory)
- [`starter/run.sh`](starter/run.sh): the command the lesson ran
- [`starter/template.yml`](starter/template.yml): the listing from the lesson
- [`starter/templates/message.j2`](starter/templates/message.j2)
- [`check.json`](check.json): how `./check` runs and checks this lab

## Steps

1. Go to the starter: `cd labs/m04l05/m04l05-03/starter`
2. Read `template.yml`.
3. Edit `template.yml` and check it: `ansible-playbook --syntax-check template.yml`.
4. Check it from the repository root: `./check m04l05-03`.
5. The site offers these commands for this lab; the first is the default, and the only one graded. Run another with `./check m04l05-03 --command=<id>`:
   - `syntax-check` (Syntax check): `ansible-playbook --syntax-check template.yml`
   - `list-tasks` (List tasks): `ansible-playbook --list-tasks template.yml`
   - `list-hosts` (List hosts): `ansible-playbook --list-hosts template.yml`

## How to check

`./check m04l05-03` copies `starter/` into a scratch directory and runs `ansible-playbook --syntax-check template.yml` there, the way the site's lab sandbox does: that directory is the working directory and `HOME`, `LANG=C.UTF-8`, `TZ=UTC`, a limit of 10 seconds and 256 KiB of output per stream.

This is a checker lab: it runs `ansible-playbook --syntax-check` against localhost: it parses the playbook and what it includes without running any task. The site shows the checker's report without grading; `./check` passes when the checker finds no errors.

---

[Open the lesson on LearnSome.tech](https://learnsome.tech/learn/ansible-course/m04l05) · [All labs of this lesson](../README.md) · [Course README](../../../README.md)
