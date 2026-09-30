# m01l02-05 · Asking Ansible what it thinks the inventory says

**Lesson:** [Ansible Architecture And The Control Node](https://learnsome.tech/learn/ansible-course/m01l02) (lesson 1.2, module 1: Introduction And Setup) · Free  
**Check:** Graded

## Goal

You can name the two roles in an Ansible setup, explain what agentless means in terms of what actually happens on a managed node during a task, and point at the two files on the control node that decide who is managed and how.

In the lesson: Never guess at what Ansible read. There is a command that will draw the inventory back at you as a tree, and it is the fastest way to find a typo. Two things in this tree are worth naming now. Every host is a member of the group called all, whether you asked for that or not. And a host you did not put in any group lands in the group called ungrouped. Those two groups always exist. Groups are the subject of the next module, but the habit starts here: when an inventory does not behave, ask the tool what it parsed before you reread the file.

## Files

- [`starter/ansible.cfg`](starter/ansible.cfg)
- [`starter/inventory`](starter/inventory): the listing from the lesson
- [`starter/run.sh`](starter/run.sh): the command the lesson ran
- [`expected.txt`](expected.txt): the output the check compares with
- [`check.json`](check.json): how `./check` runs and checks this lab

## Steps

1. Go to the starter: `cd labs/m01l02/m01l02-05/starter`
2. Read `inventory`.
3. Run it: `ansible-inventory --graph`.
4. Check it from the repository root: `./check m01l02-05`.

## Expected output

```text
@all:
  |--@ungrouped:
  |  |--localhost
```

## How to check

`./check m01l02-05` copies `starter/` into a scratch directory and runs `ansible-inventory --graph` there, the way the site's lab sandbox does: that directory is the working directory and `HOME`, `LANG=C.UTF-8`, `TZ=UTC`, a limit of 10 seconds and 256 KiB of output per stream.

It passes when the output matches `expected.txt` by the site's rules, within the limits. Standard output and standard error are compared after Ansible's machine-specific noise is set aside: colour, banner padding, column alignment, blank lines and the warnings Ansible prints about the machine it runs on. A pass here is a pass on the site.

---

[Open the lesson on LearnSome.tech](https://learnsome.tech/learn/ansible-course/m01l02) · [All labs of this lesson](../README.md) · [Course README](../../../README.md)
