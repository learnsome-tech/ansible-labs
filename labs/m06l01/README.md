# m06l01 · Securing Data With Ansible Vault

Module 6: Security And Practices · lesson 6.1 · Pro · [Open the lesson](https://learnsome.tech/learn/ansible-course/m06l01)

**Goal:** You can explain what Vault encrypts and keep secret values out of ordinary playbook text.

## Labs

| Lab | What it is | Check |
| --- | --- | --- |
| [m06l01-02](m06l01-02/) | An encrypted variables file | Checker |

## Exercises

Open exercises from the lesson, to try on your own. They have no answer files: work them out, and use the labs above as reference.

### Move one secret behind Vault

1. Choose one non production training secret.
2. Create an encrypted variables file for it.
3. Reference the variable from a play without printing it.

> **Hint:** Keep the password prompt and plaintext outside the repository.

## Check yourself

- What does Vault encrypt?
- Where should the password live?
- Why can a Vault secret still leak?
- How should encrypted files be edited?

---

[Course README](../../README.md) · [Ansible Configuration Management at Scale on LearnSome.tech](https://learnsome.tech/courses/ansible-course)
