# m01l01-07 · The first run does the work

**Lesson:** [What Configuration Management Is](https://learnsome.tech/learn/ansible-course/m01l01) (lesson 1.1, module 1: Introduction And Setup) · Free  
**Check:** Graded

## Goal

You can say what configuration management is, why it comes after provisioning rather than instead of it, and demonstrate the difference between a script that repeats its work and a playbook that does not.

In the lesson: Run the play. Read the transcript from the top. There is a banner for the play, then a banner for each task carrying the name you gave it, which is why naming tasks is not decoration. Under each task is the verdict for each host. Here both tasks say changed, meaning the host did not match the description and Ansible altered it to fit. At the bottom is the recap, one line per host, counting how many tasks ran and how many of them changed something. Two tasks ran, two changed something, nothing failed. So far this looks like any other tool doing two pieces of work.

## Files

- [`starter/ansible.cfg`](starter/ansible.cfg)
- [`starter/inventory`](starter/inventory)
- [`starter/run.sh`](starter/run.sh): the command the lesson ran
- [`starter/setup.sh`](starter/setup.sh)
- [`starter/site.yml`](starter/site.yml): the listing from the lesson
- [`expected.txt`](expected.txt): the output the check compares with
- [`check.json`](check.json): how `./check` runs and checks this lab

## Steps

1. Go to the starter: `cd labs/m01l01/m01l01-07/starter`
2. Read `site.yml`.
3. Run it: `ansible-playbook site.yml`.
4. Check it from the repository root: `./check m01l01-07`.

## Expected output

```text
PLAY [Configure the web server] ***
TASK [Create the site directory] ***
changed: [localhost]
TASK [Set the listening port] ***
changed: [localhost]
PLAY RECAP ***
localhost : ok=2 changed=2 unreachable=0 failed=0 skipped=0 rescued=0 ignored=0
```

## How to check

`./check m01l01-07` copies `starter/` into a scratch directory and runs `ansible-playbook site.yml` there, the way the site's lab sandbox does: that directory is the working directory and `HOME`, `LANG=C.UTF-8`, `TZ=UTC`, a limit of 10 seconds and 256 KiB of output per stream.

It passes when the output matches `expected.txt` by the site's rules, within the limits. Standard output and standard error are compared after Ansible's machine-specific noise is set aside: colour, banner padding, column alignment, blank lines and the warnings Ansible prints about the machine it runs on. A pass here is a pass on the site.

---

[Open the lesson on LearnSome.tech](https://learnsome.tech/learn/ansible-course/m01l01) · [All labs of this lesson](../README.md) · [Course README](../../../README.md)
