# m02l04-02 · The connection variables in an inventory

**Lesson:** [Connections And Privilege Escalation](https://learnsome.tech/learn/ansible-course/m02l04) (lesson 2.4, module 2: Inventory And Targets) · Pro  
**Check:** Read along

## Goal

You can set the connection variables that decide how Ansible reaches a host, choose the right connection plugin, and escalate privilege correctly with become at the play or task level rather than logging in as root.

In the lesson: Here they are in an inventory. The first host uses the local connection, which means modules run here with no network involved, and that is how this whole course runs without servers. Then a group of two hosts, one of which listens on a different port, and a per host override sits on the host's own line. Below, settings for the whole group: the account to log in as, and the key to log in with. That account is the one you connect as, not the account to become, and keeping those two ideas apart is the subject of the second half of this lesson.

## Files

- [`starter/ansible.cfg`](starter/ansible.cfg)
- [`starter/inventory`](starter/inventory): the listing from the lesson
- [`starter/run.sh`](starter/run.sh): the command the lesson ran
- [`check.json`](check.json): how `./check` runs and checks this lab

## Steps

1. Read `starter/inventory` alongside the lesson.
2. Follow it the way the lesson builds it:
   - Lines 1–2: the local connection
   - Lines 3–6: listens on a different port
   - Lines 7–10: settings for the whole group
3. Notes from the lesson:
   - Line 6: a per host override sits on the host's own line
   - Line 9: the account to log in as, not the account to become
4. On a machine that has what it needs, the lesson ran it with:

   ```sh
   cat inventory
   ```

## How to check

**Read along.** It is a listing to read alongside the lesson, not a program to run.

There is nothing to check: `./check m02l04-02` says so and moves on.

---

[Open the lesson on LearnSome.tech](https://learnsome.tech/learn/ansible-course/m02l04) · [All labs of this lesson](../README.md) · [Course README](../../../README.md)
