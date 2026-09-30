# m02l01-05 · Trying patterns without running anything

**Lesson:** [The Static Inventory File](https://learnsome.tech/learn/ansible-course/m02l01) (lesson 2.1, module 2: Inventory And Targets) · Pro  
**Check:** Graded

## Goal

You can write a static inventory in either the ini or the YAML form, declare groups and groups of groups, expand a host range, and select any subset of hosts with a pattern before running anything against them.

In the lesson: There is a flag that resolves a pattern and prints the answer without touching a single host, and it should become a reflex. Start with the parent group, which gives five hosts, gathered from both of its children. Now subtract the databases and three remain. Quote that pattern in your shell, because the exclamation mark means something to the shell as well. Last, a wildcard on the name, which ignores groups entirely and matches the text. Get into the habit of running this before anything destructive. It costs a second and it answers the only question that matters: exactly which machines am I about to change.

## Files

- [`starter/ansible.cfg`](starter/ansible.cfg)
- [`starter/inventory`](starter/inventory)
- [`starter/run.sh`](starter/run.sh): the command the lesson ran
- [`starter/shell-trying-patterns-without-running-anything.sh`](starter/shell-trying-patterns-without-running-anything.sh): the listing from the lesson
- [`expected.txt`](expected.txt): the output the check compares with
- [`check.json`](check.json): how `./check` runs and checks this lab

## Steps

1. Go to the starter: `cd labs/m02l01/m02l01-05/starter`
2. Read `shell-trying-patterns-without-running-anything.sh`.
3. The session types these commands, in order:

   ```sh
   ansible production --list-hosts
   ansible 'production:!dbservers' --list-hosts
   ansible 'db*' --list-hosts
   ```
4. Run it: `bash shell-trying-patterns-without-running-anything.sh`.
5. Check it from the repository root: `./check m02l01-05`.

## Expected output

```text
  hosts (5):
    web1.example.com
    web2.example.com
    web3.example.com
    db1.example.com
    db2.example.com
  hosts (3):
    web1.example.com
    web2.example.com
    web3.example.com
  hosts (2):
    db1.example.com
    db2.example.com
```

## How to check

`./check m02l01-05` copies `starter/` into a scratch directory and runs `bash shell-trying-patterns-without-running-anything.sh` there, the way the site's lab sandbox does: that directory is the working directory and `HOME`, `LANG=C.UTF-8`, `TZ=UTC`, a limit of 10 seconds and 256 KiB of output per stream.

It passes when the output matches `expected.txt` by the site's rules, within the limits. The expected output is the output recorded in the session itself (its `#   ` comment lines), collected into `expected.txt`. Output is compared line by line; spaces at the end of a line and blank lines at the end do not count, and if that differs standard output followed by standard error is compared with Python traceback frames and blank lines set aside. A pass here is a pass on the site.

---

[Open the lesson on LearnSome.tech](https://learnsome.tech/learn/ansible-course/m02l01) · [All labs of this lesson](../README.md) · [Course README](../../../README.md)
