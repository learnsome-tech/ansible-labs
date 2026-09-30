# m01l01-08 · The second run does nothing at all

**Lesson:** [What Configuration Management Is](https://learnsome.tech/learn/ansible-course/m01l01) (lesson 1.1, module 1: Introduction And Setup) · Free  
**Check:** Graded

## Goal

You can say what configuration management is, why it comes after provisioning rather than instead of it, and demonstrate the difference between a script that repeats its work and a playbook that does not.

In the lesson: Now run it again without changing anything. Every task still runs, and every task still reports, but the verdicts have moved from changed to ok. Ok means the host already matched the description, so nothing was done to it. The recap agrees: two tasks succeeded and none of them changed anything. Compare that with the shell script, which quietly wrote a second copy of the line. The file this play manages still holds exactly one copy, because presence of the line was what you asked for, and the line was already present. This is idempotency, and you can watch it happen in the change counter.

## Files

- [`starter/ansible.cfg`](starter/ansible.cfg)
- [`starter/inventory`](starter/inventory)
- [`starter/run.sh`](starter/run.sh): the command the lesson ran
- [`starter/setup.sh`](starter/setup.sh)
- [`starter/site.yml`](starter/site.yml): the listing from the lesson
- [`starter/site/server.conf`](starter/site/server.conf)
- [`expected.txt`](expected.txt): the output the check compares with
- [`check.json`](check.json): how `./check` runs and checks this lab

## Steps

1. Go to the starter: `cd labs/m01l01/m01l01-08/starter`
2. Read `site.yml`.
3. Run it: `ansible-playbook site.yml`.
4. Check it from the repository root: `./check m01l01-08`.
5. The site offers these commands for this lab; the first is the default, and the only one graded. Run another with `./check m01l01-08 --command=<id>`:
   - `recorded` (Lesson command): `ansible-playbook site.yml`
   - `syntax-check` (Syntax check): `ansible-playbook --syntax-check site.yml`
   - `list-tasks` (List tasks): `ansible-playbook --list-tasks site.yml`
   - `list-hosts` (List hosts): `ansible-playbook --list-hosts site.yml`

## Expected output

```text
PLAY [Configure the web server] ***
TASK [Create the site directory] ***
ok: [localhost]
TASK [Set the listening port] ***
ok: [localhost]
PLAY RECAP ***
localhost : ok=2 changed=0 unreachable=0 failed=0 skipped=0 rescued=0 ignored=0
```

## How to check

`./check m01l01-08` copies `starter/` into a scratch directory and runs `ansible-playbook site.yml` there, the way the site's lab sandbox does: that directory is the working directory and `HOME`, `LANG=C.UTF-8`, `TZ=UTC`, a limit of 10 seconds and 256 KiB of output per stream.

It passes when the output matches `expected.txt` by the site's rules, within the limits. Standard output and standard error are compared after Ansible's machine-specific noise is set aside: colour, banner padding, column alignment, blank lines and the warnings Ansible prints about the machine it runs on. A pass here is a pass on the site.

---

[Open the lesson on LearnSome.tech](https://learnsome.tech/learn/ansible-course/m01l01) · [All labs of this lesson](../README.md) · [Course README](../../../README.md)
