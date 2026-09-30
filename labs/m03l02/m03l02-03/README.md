# m03l02-03 · Apply the desired state

**Lesson:** [Writing Your First Playbook](https://learnsome.tech/learn/ansible-course/m03l02) (lesson 3.2, module 3: Playbooks, Plays And Tasks) · Pro  
**Check:** Graded

## Goal

You can write a local playbook that creates a directory and a file in its workspace.

In the lesson: Apply the desired state. The directory task reports changed because the directory was absent, and the copy task reports changed because the file was absent. There are two successful tasks and two changes in the recap. Run this in a disposable workspace while you are learning. The same pattern works against a group of remote hosts once your inventory and credentials are ready, but the target and the connection are the only pieces that need to change. The task descriptions and their declared states stay the same.

## Files

- [`starter/ansible.cfg`](starter/ansible.cfg)
- [`starter/inventory`](starter/inventory)
- [`starter/run.sh`](starter/run.sh): the command the lesson ran
- [`starter/site.yml`](starter/site.yml): the listing from the lesson
- [`expected.txt`](expected.txt): the output the check compares with
- [`check.json`](check.json): how `./check` runs and checks this lab

## Steps

1. Go to the starter: `cd labs/m03l02/m03l02-03/starter`
2. Read `site.yml`.
3. Run it: `ansible-playbook site.yml`.
4. Check it from the repository root: `./check m03l02-03`.
5. The site offers these commands for this lab; the first is the default, and the only one graded. Run another with `./check m03l02-03 --command=<id>`:
   - `recorded` (Lesson command): `ansible-playbook site.yml`
   - `syntax-check` (Syntax check): `ansible-playbook --syntax-check site.yml`
   - `list-tasks` (List tasks): `ansible-playbook --list-tasks site.yml`
   - `list-hosts` (List hosts): `ansible-playbook --list-hosts site.yml`

## Expected output

```text
PLAY [Build a tiny site] ***
TASK [Create the site directory] ***
changed: [localhost]
TASK [Write the index page] ***
changed: [localhost]
PLAY RECAP ***
localhost : ok=2 changed=2 unreachable=0 failed=0 skipped=0 rescued=0 ignored=0
```

## How to check

`./check m03l02-03` copies `starter/` into a scratch directory and runs `ansible-playbook site.yml` there, the way the site's lab sandbox does: that directory is the working directory and `HOME`, `LANG=C.UTF-8`, `TZ=UTC`, a limit of 10 seconds and 256 KiB of output per stream.

It passes when the output matches `expected.txt` by the site's rules, within the limits. Standard output and standard error are compared after Ansible's machine-specific noise is set aside: colour, banner padding, column alignment, blank lines and the warnings Ansible prints about the machine it runs on. A pass here is a pass on the site.

---

[Open the lesson on LearnSome.tech](https://learnsome.tech/learn/ansible-course/m03l02) · [All labs of this lesson](../README.md) · [Course README](../../../README.md)
