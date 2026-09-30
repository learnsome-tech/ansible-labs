# m03l01-03 · Run the playbook

**Lesson:** [Playbook Syntax And YAML](https://learnsome.tech/learn/ansible-course/m03l01) (lesson 3.1, module 3: Playbooks, Plays And Tasks) · Pro  
**Check:** Graded

## Goal

You can read a playbook as YAML and explain how plays and tasks fit together.

In the lesson: Now run the playbook. Ansible prints the play name, then the task name, and the debug module reports an okay result because it did not change anything. The message appears as structured output. At the end, the recap counts the task as okay, with zero changes and zero failures. These headings are why names matter. During a real run you may have dozens of tasks, and the names let you locate the one that needs attention. The recap is also a quick health check: look at unreachable and failed before you trust the run.

## Files

- [`starter/ansible.cfg`](starter/ansible.cfg)
- [`starter/hello.yml`](starter/hello.yml): the listing from the lesson
- [`starter/inventory`](starter/inventory)
- [`starter/run.sh`](starter/run.sh): the command the lesson ran
- [`expected.txt`](expected.txt): the output the check compares with
- [`check.json`](check.json): how `./check` runs and checks this lab

## Steps

1. Go to the starter: `cd labs/m03l01/m03l01-03/starter`
2. Read `hello.yml`.
3. Run it: `ansible-playbook hello.yml`.
4. Check it from the repository root: `./check m03l01-03`.
5. The site offers these commands for this lab; the first is the default, and the only one graded. Run another with `./check m03l01-03 --command=<id>`:
   - `recorded` (Lesson command): `ansible-playbook hello.yml`
   - `syntax-check` (Syntax check): `ansible-playbook --syntax-check hello.yml`
   - `list-tasks` (List tasks): `ansible-playbook --list-tasks hello.yml`
   - `list-hosts` (List hosts): `ansible-playbook --list-hosts hello.yml`

## Expected output

```text
PLAY [Say hello] ***
TASK [Show a greeting] ***
ok: [localhost] => {
    "msg": "Hello from Ansible"
}
PLAY RECAP ***
localhost : ok=1 changed=0 unreachable=0 failed=0 skipped=0 rescued=0 ignored=0
```

## How to check

`./check m03l01-03` copies `starter/` into a scratch directory and runs `ansible-playbook hello.yml` there, the way the site's lab sandbox does: that directory is the working directory and `HOME`, `LANG=C.UTF-8`, `TZ=UTC`, a limit of 10 seconds and 256 KiB of output per stream.

It passes when the output matches `expected.txt` by the site's rules, within the limits. Standard output and standard error are compared after Ansible's machine-specific noise is set aside: colour, banner padding, column alignment, blank lines and the warnings Ansible prints about the machine it runs on. A pass here is a pass on the site.

---

[Open the lesson on LearnSome.tech](https://learnsome.tech/learn/ansible-course/m03l01) · [All labs of this lesson](../README.md) · [Course README](../../../README.md)
