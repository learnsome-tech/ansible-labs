# m02l04-04 · Proving which account and which machine

**Lesson:** [Connections And Privilege Escalation](https://learnsome.tech/learn/ansible-course/m02l04) (lesson 2.4, module 2: Inventory And Targets) · Pro  
**Check:** Read along

## Goal

You can set the connection variables that decide how Ansible reaches a host, choose the right connection plugin, and escalate privilege correctly with become at the play or task level rather than logging in as root.

In the lesson: Two commands worth knowing when a connection behaves oddly. The first asks which machine it landed on, and the answer names the operating system kernel. The second asks which account it ran as, as a number, which avoids any confusion about display names. On this control node the answers describe the laptop, because the local connection was used. Point the same pair at a real host and they tell you, in two seconds, whether you reached the machine you meant and whether you arrived as the user you expected. Both report changed, because the command module always does, which you met in module one.

## Files

- [`starter/ansible.cfg`](starter/ansible.cfg)
- [`starter/inventory`](starter/inventory)
- [`starter/run.sh`](starter/run.sh): the command the lesson ran
- [`starter/shell-proving-which-account-and-which-machine.sh`](starter/shell-proving-which-account-and-which-machine.sh): the listing from the lesson
- [`check.json`](check.json): how `./check` runs and checks this lab

## Steps

1. Read `starter/shell-proving-which-account-and-which-machine.sh` alongside the lesson.
2. On a machine that has what it needs, the lesson ran it with:

   ```sh
   bash shell-proving-which-account-and-which-machine.sh
   ```

## How to check

**Read along.** The listing does not run cleanly in the lab sandbox (it relies on something the sandbox cannot provide), so the site shows it read-only.

There is nothing to check: `./check m02l04-04` says so and moves on.

---

[Open the lesson on LearnSome.tech](https://learnsome.tech/learn/ansible-course/m02l04) · [All labs of this lesson](../README.md) · [Course README](../../../README.md)
