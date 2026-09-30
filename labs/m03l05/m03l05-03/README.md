# m03l05-03 · See the handler at the end

**Lesson:** [Handlers And Notify](https://learnsome.tech/learn/ansible-course/m03l05) (lesson 3.5, module 3: Playbooks, Plays And Tasks) · Pro  
**Check:** Graded

## Goal

You can trigger a handler only when a task changes and explain when handlers run.

In the lesson: The run shows the configuration task first. Because it changed, Ansible prints a running handler line after the ordinary task list and then executes the handler. The recap counts both changes. If you run it again without editing the configuration, the task is okay and the handler is absent from the run. That conditional reaction is the useful distinction from putting a reload command directly after every copy task. Handlers let the playbook collect related changes and perform one safe reaction at the end.

## Files

- [`starter/ansible.cfg`](starter/ansible.cfg)
- [`starter/handler.yml`](starter/handler.yml): the listing from the lesson
- [`starter/inventory`](starter/inventory)
- [`starter/run.sh`](starter/run.sh): the command the lesson ran
- [`expected.txt`](expected.txt): the output the check compares with
- [`check.json`](check.json): how `./check` runs and checks this lab

## Steps

1. Go to the starter: `cd labs/m03l05/m03l05-03/starter`
2. Read `handler.yml`.
3. Run it: `ansible-playbook handler.yml`.
4. Check it from the repository root: `./check m03l05-03`.
5. The site offers these commands for this lab; the first is the default, and the only one graded. Run another with `./check m03l05-03 --command=<id>`:
   - `recorded` (Lesson command): `ansible-playbook handler.yml`
   - `syntax-check` (Syntax check): `ansible-playbook --syntax-check handler.yml`
   - `list-tasks` (List tasks): `ansible-playbook --list-tasks handler.yml`
   - `list-hosts` (List hosts): `ansible-playbook --list-hosts handler.yml`

## Expected output

```text
PLAY [Demonstrate notification] ***
TASK [Write a configuration file] ***
changed: [localhost]
RUNNING HANDLER [Record a reload] ***
changed: [localhost]
PLAY RECAP ***
localhost : ok=2 changed=2 unreachable=0 failed=0 skipped=0 rescued=0 ignored=0
```

## How to check

`./check m03l05-03` copies `starter/` into a scratch directory and runs `ansible-playbook handler.yml` there, the way the site's lab sandbox does: that directory is the working directory and `HOME`, `LANG=C.UTF-8`, `TZ=UTC`, a limit of 10 seconds and 256 KiB of output per stream.

It passes when the output matches `expected.txt` by the site's rules, within the limits. Standard output and standard error are compared after Ansible's machine-specific noise is set aside: colour, banner padding, column alignment, blank lines and the warnings Ansible prints about the machine it runs on. A pass here is a pass on the site.

---

[Open the lesson on LearnSome.tech](https://learnsome.tech/learn/ansible-course/m03l05) · [All labs of this lesson](../README.md) · [Course README](../../../README.md)
