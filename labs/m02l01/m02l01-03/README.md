# m02l01-03 · Reading it back as a tree

**Lesson:** [The Static Inventory File](https://learnsome.tech/learn/ansible-course/m02l01) (lesson 2.1, module 2: Inventory And Targets) · Pro  
**Check:** Graded

## Goal

You can write a static inventory in either the ini or the YAML form, declare groups and groups of groups, expand a host range, and select any subset of hosts with a pattern before running anything against them.

In the lesson: Read it back as a tree. Three things in this output are worth pausing on. The range really did expand: three web hosts, not one strange host name with brackets in it. The nesting is real, so the production group contains two groups and those contain hosts, and a host in a child group is a member of the parent as well. And the host you did not put anywhere has landed in the group called ungrouped, which sits alongside production rather than inside it. Whenever an inventory surprises you, this command is the first thing to run, because it shows what Ansible parsed rather than what you meant.

## Files

- [`starter/ansible.cfg`](starter/ansible.cfg)
- [`starter/inventory`](starter/inventory): the listing from the lesson
- [`starter/run.sh`](starter/run.sh): the command the lesson ran
- [`expected.txt`](expected.txt): the output the check compares with
- [`check.json`](check.json): how `./check` runs and checks this lab

## Steps

1. Go to the starter: `cd labs/m02l01/m02l01-03/starter`
2. Read `inventory`.
3. Run it: `ansible-inventory --graph`.
4. Check it from the repository root: `./check m02l01-03`.

## Expected output

```text
@all:
  |--@ungrouped:
  |  |--localhost
  |--@production:
  |  |--@webservers:
  |  |  |--web1.example.com
  |  |  |--web2.example.com
  |  |  |--web3.example.com
  |  |--@dbservers:
  |  |  |--db1.example.com
  |  |  |--db2.example.com
```

## How to check

`./check m02l01-03` copies `starter/` into a scratch directory and runs `ansible-inventory --graph` there, the way the site's lab sandbox does: that directory is the working directory and `HOME`, `LANG=C.UTF-8`, `TZ=UTC`, a limit of 10 seconds and 256 KiB of output per stream.

It passes when the output matches `expected.txt` by the site's rules, within the limits. Standard output and standard error are compared after Ansible's machine-specific noise is set aside: colour, banner padding, column alignment, blank lines and the warnings Ansible prints about the machine it runs on. A pass here is a pass on the site.

---

[Open the lesson on LearnSome.tech](https://learnsome.tech/learn/ansible-course/m02l01) · [All labs of this lesson](../README.md) · [Course README](../../../README.md)
