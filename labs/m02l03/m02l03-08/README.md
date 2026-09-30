# m02l03-08 · Two sources, layered

**Lesson:** [Dynamic Inventory](https://learnsome.tech/learn/ansible-course/m02l03) (lesson 2.3, module 2: Inventory And Targets) · Pro  
**Check:** Graded

## Goal

You can explain why a written host list fails in an elastic environment, read and run an inventory script, prefer an inventory plugin to a script, and build groups automatically from host attributes with keyed groups.

In the lesson: Pass both sources on one command line, in order, and the graph shows four groups that nobody wrote. Each distinct value of an attribute became a group, named from the prefix and the value. Hosts appear in several groups at once, which is exactly right: a host has a role and a tier, and you will want to target by either. The group called ungrouped is now empty, because every host earned a group. Compare this with the file you would otherwise maintain by hand, and remember that in a real environment the attributes come from the provider, so the grouping updates itself when somebody launches a machine.

## Files

- [`starter/ansible.cfg`](starter/ansible.cfg)
- [`starter/aws_ec2.yml`](starter/aws_ec2.yml)
- [`starter/constructed.yml`](starter/constructed.yml): the listing from the lesson
- [`starter/dynamic.py`](starter/dynamic.py)
- [`starter/inventory`](starter/inventory)
- [`starter/run.sh`](starter/run.sh): the command the lesson ran
- [`expected.txt`](expected.txt): the output the check compares with
- [`check.json`](check.json): how `./check` runs and checks this lab

## Steps

1. Go to the starter: `cd labs/m02l03/m02l03-08/starter`
2. Read `constructed.yml`.
3. Run it: `ansible-inventory -i inventory -i constructed.yml --graph`.
4. Check it from the repository root: `./check m02l03-08`.
5. The site offers these commands for this lab; the first is the default, and the only one graded. Run another with `./check m02l03-08 --command=<id>`:
   - `recorded` (Lesson command): `ansible-inventory -i inventory -i constructed.yml --graph`
   - `lint` (Lint): `yamllint -d relaxed constructed.yml`
   - `strict` (Lint strictly): `yamllint constructed.yml`

## Expected output

```text
@all:
  |--@ungrouped:
  |--@role_web:
  |  |--localhost
  |  |--web1.example.com
  |--@tier_prod:
  |  |--localhost
  |  |--web1.example.com
  |  |--db1.example.com
  |--@role_db:
  |  |--db1.example.com
  |  |--db2.example.com
  |--@tier_staging:
  |  |--db2.example.com
```

## How to check

`./check m02l03-08` copies `starter/` into a scratch directory and runs `ansible-inventory -i inventory -i constructed.yml --graph` there, the way the site's lab sandbox does: that directory is the working directory and `HOME`, `LANG=C.UTF-8`, `TZ=UTC`, a limit of 10 seconds and 256 KiB of output per stream.

It passes when the output matches `expected.txt` by the site's rules, within the limits. Standard output and standard error are compared after Ansible's machine-specific noise is set aside: colour, banner padding, column alignment, blank lines and the warnings Ansible prints about the machine it runs on. A pass here is a pass on the site.

---

[Open the lesson on LearnSome.tech](https://learnsome.tech/learn/ansible-course/m02l03) · [All labs of this lesson](../README.md) · [Course README](../../../README.md)
