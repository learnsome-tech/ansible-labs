# m06l02-02 · Record the environment boundary

**Lesson:** [Vault IDs And Multiple Passwords](https://learnsome.tech/learn/ansible-course/m06l02) (lesson 6.2, module 6: Security And Practices) · Pro  
**Check:** Read along

## Goal

You can explain Vault IDs and choose separate credentials for different encrypted data sets.

In the lesson: This policy records the boundary without recording any password. Development, staging, and production each have a distinct Vault ID and a password supplied by the deployment secret store. The exact secret store is an operational choice, but the ownership and rotation process should be documented. Separating keys limits the effect of a mistake and makes it possible to rotate one environment without rewriting every encrypted file.

## Files

- [`starter/ansible.cfg`](starter/ansible.cfg)
- [`starter/inventory`](starter/inventory)
- [`starter/run.sh`](starter/run.sh): the command the lesson ran
- [`starter/vault-policy.md`](starter/vault-policy.md): the listing from the lesson
- [`check.json`](check.json): how `./check` runs and checks this lab

## Steps

1. Read `starter/vault-policy.md` alongside the lesson.
2. On a machine that has what it needs, the lesson ran it with:

   ```sh
   cat vault-policy.md
   ```

## How to check

**Read along.** It is a listing to read alongside the lesson, not a program to run.

There is nothing to check: `./check m06l02-02` says so and moves on.

---

[Open the lesson on LearnSome.tech](https://learnsome.tech/learn/ansible-course/m06l02) · [All labs of this lesson](../README.md) · [Course README](../../../README.md)
