# m01l01-08 · The second run does nothing at all

**Lesson:** [What Configuration Management Is](https://learnsome.tech/learn/ansible-course/m01l01) (lesson 1.1, module 1: Introduction And Setup) · Free  
**Check:** Read along

## Goal

You can say what configuration management is, why it comes after provisioning rather than instead of it, and demonstrate the difference between a script that repeats its work and a playbook that does not.

In the lesson: Now run it again without changing anything. Every task still runs, and every task still reports, but the verdicts have moved from changed to ok. Ok means the host already matched the description, so nothing was done to it. The recap agrees: two tasks succeeded and none of them changed anything. Compare that with the shell script, which quietly wrote a second copy of the line. The file this play manages still holds exactly one copy, because presence of the line was what you asked for, and the line was already present. This is idempotency, and you can watch it happen in the change counter.

## Files

- [`starter/ansible.cfg`](starter/ansible.cfg)
- [`starter/inventory`](starter/inventory)
- [`starter/run.sh`](starter/run.sh): the command the lesson ran
- [`starter/setup.sh`](starter/setup.sh)
- [`starter/site.yml`](starter/site.yml): the listing from the lesson
- [`check.json`](check.json): how `./check` runs and checks this lab

## Steps

1. Read `starter/site.yml` alongside the lesson.
2. On a machine that has what it needs, the lesson ran it with:

   ```sh
   ansible-playbook site.yml
   ```

## How to check

**Read along.** The listing does not run cleanly in the lab sandbox (it relies on something the sandbox cannot provide), so the site shows it read-only.

There is nothing to check: `./check m01l01-08` says so and moves on.

---

[Open the lesson on LearnSome.tech](https://learnsome.tech/learn/ansible-course/m01l01) · [All labs of this lesson](../README.md) · [Course README](../../../README.md)
