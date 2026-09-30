# m01l02-07 · Proving the two files work together

**Lesson:** [Ansible Architecture And The Control Node](https://learnsome.tech/learn/ansible-course/m01l02) (lesson 1.2, module 1: Introduction And Setup) · Free  
**Check:** Graded

## Goal

You can name the two roles in an Ansible setup, explain what agentless means in terms of what actually happens on a managed node during a task, and point at the two files on the control node that decide who is managed and how.

In the lesson: Now a command that uses both files at once. It asks Ansible to reach every host in the inventory and run the ping module. Despite the name, this is not a network ping. It is a module that connects, starts Python on the far side, and reports back, so a success here means the whole path works and not merely that packets arrive. The answer is one block per host. It says success, it says nothing changed, which is true because checking is not changing, and it says pong. When a new host refuses to work, this is the first command to run against it.

## Files

- [`starter/ansible.cfg`](starter/ansible.cfg): the listing from the lesson
- [`starter/inventory`](starter/inventory)
- [`starter/run.sh`](starter/run.sh): the command the lesson ran
- [`expected.txt`](expected.txt): the output the check compares with
- [`check.json`](check.json): how `./check` runs and checks this lab

## Steps

1. Go to the starter: `cd labs/m01l02/m01l02-07/starter`
2. Read `ansible.cfg`.
3. Run it: `ansible all -m ansible.builtin.ping`.
4. Check it from the repository root: `./check m01l02-07`.

## Expected output

```text
localhost | SUCCESS => {
    "changed": false,
    "ping": "pong"
}
```

## How to check

`./check m01l02-07` copies `starter/` into a scratch directory and runs `ansible all -m ansible.builtin.ping` there, the way the site's lab sandbox does: that directory is the working directory and `HOME`, `LANG=C.UTF-8`, `TZ=UTC`, a limit of 10 seconds and 256 KiB of output per stream.

It passes when the output matches `expected.txt` by the site's rules, within the limits. Standard output and standard error are compared after Ansible's machine-specific noise is set aside: colour, banner padding, column alignment, blank lines and the warnings Ansible prints about the machine it runs on. A pass here is a pass on the site.

---

[Open the lesson on LearnSome.tech](https://learnsome.tech/learn/ansible-course/m01l02) · [All labs of this lesson](../README.md) · [Course README](../../../README.md)
