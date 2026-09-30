# m03l04-03 · Run the rehearsal

**Lesson:** [Check Mode And Diff](https://learnsome.tech/learn/ansible-course/m03l04) (lesson 3.4, module 3: Playbooks, Plays And Tasks) · Pro  
**Check:** Graded

## Goal

You can preview a playbook with check mode and inspect proposed file changes with diff output.

In the lesson: Run the rehearsal with the check flag and the diff flag. The task reports changed because Ansible predicts that the file would be created or replaced, but the file is not written. When a prior version exists, the diff appears between the task heading and its result. The recap still counts the predicted change, which is useful when you are reviewing scope. After the preview, remove the check flag only when the selected hosts, variables, and proposed differences all make sense.

## Files

- [`starter/ansible.cfg`](starter/ansible.cfg)
- [`starter/inventory`](starter/inventory)
- [`starter/preview.yml`](starter/preview.yml): the listing from the lesson
- [`starter/run.sh`](starter/run.sh): the command the lesson ran
- [`expected.txt`](expected.txt): the output the check compares with
- [`check.json`](check.json): how `./check` runs and checks this lab

## Steps

1. Go to the starter: `cd labs/m03l04/m03l04-03/starter`
2. Read `preview.yml`.
3. Run it: `ansible-playbook --check --diff preview.yml`.
4. Check it from the repository root: `./check m03l04-03`.
5. The site offers these commands for this lab; the first is the default, and the only one graded. Run another with `./check m03l04-03 --command=<id>`:
   - `recorded` (Lesson command): `ansible-playbook --check --diff preview.yml`
   - `syntax-check` (Syntax check): `ansible-playbook --syntax-check preview.yml`
   - `list-tasks` (List tasks): `ansible-playbook --list-tasks preview.yml`
   - `list-hosts` (List hosts): `ansible-playbook --list-hosts preview.yml`

## Expected output

```text
PLAY [Preview a text change] ***
TASK [Write the preview file] ***
--- before
+++ after: preview.conf
@@ -0,0 +1 @@
+new configuration\n
\ No newline at end of file
changed: [localhost]
PLAY RECAP ***
localhost : ok=1 changed=1 unreachable=0 failed=0 skipped=0 rescued=0 ignored=0
```

## How to check

`./check m03l04-03` copies `starter/` into a scratch directory and runs `ansible-playbook --check --diff preview.yml` there, the way the site's lab sandbox does: that directory is the working directory and `HOME`, `LANG=C.UTF-8`, `TZ=UTC`, a limit of 10 seconds and 256 KiB of output per stream.

It passes when the output matches `expected.txt` by the site's rules, within the limits. Standard output and standard error are compared after Ansible's machine-specific noise is set aside: colour, banner padding, column alignment, blank lines and the warnings Ansible prints about the machine it runs on. A pass here is a pass on the site.

---

[Open the lesson on LearnSome.tech](https://learnsome.tech/learn/ansible-course/m03l04) · [All labs of this lesson](../README.md) · [Course README](../../../README.md)
