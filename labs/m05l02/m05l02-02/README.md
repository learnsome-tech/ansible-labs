# m05l02-02 · Call a role from a play

**Lesson:** [Writing A Role](https://learnsome.tech/learn/ansible-course/m05l02) (lesson 5.2, module 5: Roles And Collections) · Pro  
**Check:** Read along

## Goal

You can write a small role and include it from a playbook.

In the lesson: This play delegates its work to the web role and passes one variable named site name. The role can use that value in tasks or templates without the play knowing its internal file names. Keep the play focused on target selection and role inputs. Keep the role focused on the end state it owns. That boundary makes it easier to compose several roles in a larger deployment.

## Files

- [`starter/ansible.cfg`](starter/ansible.cfg)
- [`starter/inventory`](starter/inventory)
- [`starter/run.sh`](starter/run.sh): the command the lesson ran
- [`starter/site.yml`](starter/site.yml): the listing from the lesson
- [`check.json`](check.json): how `./check` runs and checks this lab

## Steps

1. Read `starter/site.yml` alongside the lesson.
2. On a machine that has what it needs, the lesson ran it with:

   ```sh
   cat site.yml
   ```

## How to check

**Read along.** The listing does not run cleanly in the lab sandbox (it relies on something the sandbox cannot provide), so the site shows it read-only.

There is nothing to check: `./check m05l02-02` says so and moves on.

---

[Open the lesson on LearnSome.tech](https://learnsome.tech/learn/ansible-course/m05l02) · [All labs of this lesson](../README.md) · [Course README](../../../README.md)
