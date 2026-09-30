# m01l01-04 · Running it twice

**Lesson:** [What Configuration Management Is](https://learnsome.tech/learn/ansible-course/m01l01) (lesson 1.1, module 1: Introduction And Setup) · Free  
**Check:** Graded

## Goal

You can say what configuration management is, why it comes after provisioning rather than instead of it, and demonstrate the difference between a script that repeats its work and a playbook that does not.

In the lesson: Run the script once. Nothing is printed, and that is what success looks like. Now run it a second time, the way a nervous engineer does when they are not sure the first attempt worked. Again nothing is printed, so nothing appears to be wrong. Look at the file it was managing and the damage is there: the same configuration line, twice. Depending on the program reading that file, a duplicated line is harmless, or it is a startup failure at three in the morning. The script did exactly what you asked both times. That is the whole problem.

## Files

- [`starter/ansible.cfg`](starter/ansible.cfg)
- [`starter/inventory`](starter/inventory)
- [`starter/run.sh`](starter/run.sh): the command the lesson ran
- [`starter/setup.sh`](starter/setup.sh)
- [`starter/shell-running-it-twice.sh`](starter/shell-running-it-twice.sh): the listing from the lesson
- [`expected.txt`](expected.txt): the output the check compares with
- [`check.json`](check.json): how `./check` runs and checks this lab

## Steps

1. Go to the starter: `cd labs/m01l01/m01l01-04/starter`
2. Read `shell-running-it-twice.sh`.
3. The session types these commands, in order:

   ```sh
   bash setup.sh
   bash setup.sh
   cat by-hand/server.conf
   ```
4. Run it: `bash shell-running-it-twice.sh`.
5. Check it from the repository root: `./check m01l01-04`.

## Expected output

```text
listen 8080
listen 8080
```

## How to check

`./check m01l01-04` copies `starter/` into a scratch directory and runs `bash shell-running-it-twice.sh` there, the way the site's lab sandbox does: that directory is the working directory and `HOME`, `LANG=C.UTF-8`, `TZ=UTC`, a limit of 10 seconds and 256 KiB of output per stream.

It passes when the output matches `expected.txt` by the site's rules, within the limits. The expected output is the output recorded in the session itself (its `#   ` comment lines), collected into `expected.txt`. Output is compared line by line; spaces at the end of a line and blank lines at the end do not count, and if that differs standard output followed by standard error is compared with Python traceback frames and blank lines set aside. A pass here is a pass on the site.

---

[Open the lesson on LearnSome.tech](https://learnsome.tech/learn/ansible-course/m01l01) · [All labs of this lesson](../README.md) · [Course README](../../../README.md)
