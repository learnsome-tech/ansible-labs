# m02l04-06 · Become, at the play level and at the task level

**Lesson:** [Connections And Privilege Escalation](https://learnsome.tech/learn/ansible-course/m02l04) (lesson 2.4, module 2: Inventory And Targets) · Pro  
**Check:** Checker

## Goal

You can set the connection variables that decide how Ansible reaches a host, choose the right connection plugin, and escalate privilege correctly with become at the play or task level rather than logging in as root.

In the lesson: Escalation is set once on the play, and then every task in the play runs with it. Here that covers two tasks that need it: installing a package and starting a service, neither of which an ordinary account may do. The third task is different. It escalates to a different account entirely, the one the application runs as, because checking a health endpoint as the administrator would prove nothing about whether the application can do it. Note that the task sets both keys. Setting the account without also setting escalation on is the classic mistake, and the community linter will fail your build over it, which is a kindness. This panel needs a real host with an administrator account, so the course build does not run it.

## Files

- [`starter/NOT-RUNNABLE-HERE.txt`](starter/NOT-RUNNABLE-HERE.txt)
- [`starter/ansible.cfg`](starter/ansible.cfg)
- [`starter/deploy.yml`](starter/deploy.yml): the listing from the lesson
- [`starter/inventory`](starter/inventory)
- [`starter/run.sh`](starter/run.sh): the command the lesson ran
- [`check.json`](check.json): how `./check` runs and checks this lab

## Steps

1. Go to the starter: `cd labs/m02l04/m02l04-06/starter`
2. Read `deploy.yml` the way the lesson builds it:
   - Lines 1–5: set once on the play
   - Lines 6–15: two tasks that need it
   - Lines 16–21: a different account entirely
3. Notes from the lesson:
   - Line 4: true here means every task in the play escalates
   - Line 19: become user without become is the classic mistake; set both
4. Edit `deploy.yml` and check it: `ansible-playbook --syntax-check deploy.yml`.
5. Check it from the repository root: `./check m02l04-06`.

## How to check

`./check m02l04-06` copies `starter/` into a scratch directory and runs `ansible-playbook --syntax-check deploy.yml` there, the way the site's lab sandbox does: that directory is the working directory and `HOME`, `LANG=C.UTF-8`, `TZ=UTC`, a limit of 10 seconds and 256 KiB of output per stream.

This is a checker lab: it runs `ansible-playbook --syntax-check` against localhost: it parses the playbook and what it includes without running any task. The site shows the checker's report without grading; `./check` passes when the checker finds no errors.

---

[Open the lesson on LearnSome.tech](https://learnsome.tech/learn/ansible-course/m02l04) · [All labs of this lesson](../README.md) · [Course README](../../../README.md)
