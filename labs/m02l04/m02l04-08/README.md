# m02l04-08 · Being explicit about not escalating

**Lesson:** [Connections And Privilege Escalation](https://learnsome.tech/learn/ansible-course/m02l04) (lesson 2.4, module 2: Inventory And Targets) · Pro  
**Check:** Graded

## Goal

You can set the connection variables that decide how Ansible reaches a host, choose the right connection plugin, and escalate privilege correctly with become at the play or task level rather than logging in as root.

In the lesson: Here is a play that can run on the control node, and it makes two points beyond escalation. Escalation is turned off explicitly, which is worth doing in a play that must not need privilege, because it turns an accident into a failure. Then the first task keeps its result in a name, and the second prints a piece of that result. Run it here and the identity comes back as an ordinary account, not the administrator. The other detail to notice is the key that says this task never counts as a change, which is why a command module task reports ok instead of changed for once. That key gets a lesson of its own in module three.

## Files

- [`starter/ansible.cfg`](starter/ansible.cfg)
- [`starter/deploy.yml`](starter/deploy.yml)
- [`starter/inventory`](starter/inventory)
- [`starter/run.sh`](starter/run.sh): the command the lesson ran
- [`starter/who.yml`](starter/who.yml): the listing from the lesson
- [`expected.txt`](expected.txt): the output the check compares with
- [`check.json`](check.json): how `./check` runs and checks this lab

## Steps

1. Go to the starter: `cd labs/m02l04/m02l04-08/starter`
2. Read `who.yml`.
3. Run it: `ansible-playbook who.yml`.
4. Check it from the repository root: `./check m02l04-08`.
5. The site offers these commands for this lab; the first is the default, and the only one graded. Run another with `./check m02l04-08 --command=<id>`:
   - `recorded` (Lesson command): `ansible-playbook who.yml`
   - `syntax-check` (Syntax check): `ansible-playbook --syntax-check who.yml`
   - `list-tasks` (List tasks): `ansible-playbook --list-tasks who.yml`
   - `list-hosts` (List hosts): `ansible-playbook --list-hosts who.yml`

## Expected output

```text
PLAY [Show who the tasks run as] ***
TASK [Report the numeric user id] ***
ok: [localhost]
TASK [Print it] ***
ok: [localhost] => {
    "msg": "tasks run as user id 10001"
}
PLAY RECAP ***
localhost : ok=2 changed=0 unreachable=0 failed=0 skipped=0 rescued=0 ignored=0
```

## How to check

`./check m02l04-08` copies `starter/` into a scratch directory and runs `ansible-playbook who.yml` there, the way the site's lab sandbox does: that directory is the working directory and `HOME`, `LANG=C.UTF-8`, `TZ=UTC`, a limit of 10 seconds and 256 KiB of output per stream.

It passes when the output matches `expected.txt` by the site's rules, within the limits. Standard output and standard error are compared after Ansible's machine-specific noise is set aside: colour, banner padding, column alignment, blank lines and the warnings Ansible prints about the machine it runs on. A pass here is a pass on the site.

---

[Open the lesson on LearnSome.tech](https://learnsome.tech/learn/ansible-course/m02l04) · [All labs of this lesson](../README.md) · [Course README](../../../README.md)
