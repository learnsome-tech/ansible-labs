# m01l03-06 · The control node, proved

**Lesson:** [Installing Ansible](https://learnsome.tech/learn/ansible-course/m01l03) (lesson 1.3, module 1: Introduction And Setup) · Free  
**Check:** Graded

## Goal

You can install Ansible into an isolated Python environment, say what the core engine gives you and what the community package adds on top, pin the version for a team, and prove the control node works with a playbook rather than a version string.

In the lesson: Run the check. The first task in the transcript is one you never wrote: gathering facts. That is the fact collection the play asked for, and it counts as a task, which is why the recap says two tasks rather than one. Then your task, and because the debug module prints, its result carries the message alongside the verdict. Both tasks say ok and the change count is zero, which is right: nothing here was supposed to alter the host. The message tells you the engine version and the Python version the far side is using. If that line prints, your control node works end to end.

## Files

- [`starter/ansible.cfg`](starter/ansible.cfg)
- [`starter/check.yml`](starter/check.yml): the listing from the lesson
- [`starter/inventory`](starter/inventory)
- [`starter/requirements.txt`](starter/requirements.txt)
- [`starter/run.sh`](starter/run.sh): the command the lesson ran
- [`expected.txt`](expected.txt): the output the check compares with
- [`check.json`](check.json): how `./check` runs and checks this lab

## Steps

1. Go to the starter: `cd labs/m01l03/m01l03-06/starter`
2. Read `check.yml`.
3. Run it: `ansible-playbook check.yml`.
4. Check it from the repository root: `./check m01l03-06`.
5. The site offers these commands for this lab; the first is the default, and the only one graded. Run another with `./check m01l03-06 --command=<id>`:
   - `recorded` (Lesson command): `ansible-playbook check.yml`
   - `syntax-check` (Syntax check): `ansible-playbook --syntax-check check.yml`
   - `list-tasks` (List tasks): `ansible-playbook --list-tasks check.yml`
   - `list-hosts` (List hosts): `ansible-playbook --list-hosts check.yml`

## Expected output

```text
PLAY [Check the control node] ***
TASK [Gathering Facts] ***
ok: [localhost]
TASK [Report the Ansible version and the Python it runs on] ***
ok: [localhost] => {
    "msg": "core 2.21.4 on 3.14.7"
}
PLAY RECAP ***
localhost : ok=2 changed=0 unreachable=0 failed=0 skipped=0 rescued=0 ignored=0
```

## How to check

`./check m01l03-06` copies `starter/` into a scratch directory and runs `ansible-playbook check.yml` there, the way the site's lab sandbox does: that directory is the working directory and `HOME`, `LANG=C.UTF-8`, `TZ=UTC`, a limit of 10 seconds and 256 KiB of output per stream.

It passes when the output matches `expected.txt` by the site's rules, within the limits. Standard output and standard error are compared after Ansible's machine-specific noise is set aside: colour, banner padding, column alignment, blank lines and the warnings Ansible prints about the machine it runs on. A pass here is a pass on the site.

---

[Open the lesson on LearnSome.tech](https://learnsome.tech/learn/ansible-course/m01l03) · [All labs of this lesson](../README.md) · [Course README](../../../README.md)
