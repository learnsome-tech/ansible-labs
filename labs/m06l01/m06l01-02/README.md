# m06l01-02 · An encrypted variables file

**Lesson:** [Securing Data With Ansible Vault](https://learnsome.tech/learn/ansible-course/m06l01) (lesson 6.1, module 6: Security And Practices) · Pro  
**Check:** Checker

## Goal

You can explain what Vault encrypts and keep secret values out of ordinary playbook text.

In the lesson: An encrypted variables file begins with a Vault header and continues with ciphertext. The visible text is not the secret value, and editing it by hand would corrupt the file. Create or change Vault data with the Ansible Vault commands, then review the encrypted diff without copying plaintext into a ticket or a chat. The example ciphertext is illustrative and cannot be decrypted here. Its purpose is to show the artifact shape that belongs in version control.

## Files

- [`starter/vault.yml`](starter/vault.yml): the listing from the lesson
- [`check.json`](check.json): how `./check` runs and checks this lab

## Steps

1. Go to the starter: `cd labs/m06l01/m06l01-02/starter`
2. Read `vault.yml`.
3. Edit `vault.yml` and check it: `yamllint vault.yml`.
4. Check it from the repository root: `./check m06l01-02`.
5. The site offers these commands for this lab; the first is the default, and the only one graded. Run another with `./check m06l01-02 --command=<id>`:
   - `lint` (Lint): `yamllint -d relaxed vault.yml`
   - `strict` (Lint strictly): `yamllint vault.yml`

## How to check

`./check m06l01-02` copies `starter/` into a scratch directory and runs `yamllint vault.yml` there, the way the site's lab sandbox does: that directory is the working directory and `HOME`, `LANG=C.UTF-8`, `TZ=UTC`, a limit of 10 seconds and 256 KiB of output per stream.

This is a checker lab: it lints the YAML with yamllint's `relaxed` rules: it passes when there are no errors. The site shows the checker's report without grading; `./check` passes when the checker finds no errors.

---

[Open the lesson on LearnSome.tech](https://learnsome.tech/learn/ansible-course/m06l01) · [All labs of this lesson](../README.md) · [Course README](../../../README.md)
