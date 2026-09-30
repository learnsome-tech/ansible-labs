# m03l03-03 · Observe convergence

**Lesson:** [Modules And Idempotency](https://learnsome.tech/learn/ansible-course/m03l03) (lesson 3.3, module 3: Playbooks, Plays And Tasks) · Pro  
**Check:** Graded

## Goal

You can choose a module for a state change and explain why repeating an idempotent task is safe.

In the lesson: The first run observes that the marker file is missing, so the task reports changed. Run the same command again after that and the task reports okay with zero changes. The desired state has converged. In a real lesson recording you would show both recaps, because the contrast is the point. Idempotency makes repeated deployments, retries after a failure, and scheduled corrections predictable. It also lets Ansible tell you which hosts actually needed work instead of hiding every action behind a successful shell exit code.

## Files

- [`starter/ansible.cfg`](starter/ansible.cfg)
- [`starter/inventory`](starter/inventory)
- [`starter/run.sh`](starter/run.sh): the command the lesson ran
- [`starter/state.yml`](starter/state.yml): the listing from the lesson
- [`expected.txt`](expected.txt): the output the check compares with
- [`check.json`](check.json): how `./check` runs and checks this lab

## Steps

1. Go to the starter: `cd labs/m03l03/m03l03-03/starter`
2. Read `state.yml`.
3. Run it: `ansible-playbook state.yml`.
4. Check it from the repository root: `./check m03l03-03`.

## Expected output

```text
PLAY [Demonstrate idempotency] ***
TASK [Ensure a marker file exists] ***
changed: [localhost]
PLAY RECAP ***
localhost : ok=1 changed=1 unreachable=0 failed=0 skipped=0 rescued=0 ignored=0
```

## How to check

`./check m03l03-03` copies `starter/` into a scratch directory and runs `ansible-playbook state.yml` there, the way the site's lab sandbox does: that directory is the working directory and `HOME`, `LANG=C.UTF-8`, `TZ=UTC`, a limit of 10 seconds and 256 KiB of output per stream.

It passes when the output matches `expected.txt` by the site's rules, within the limits. Standard output and standard error are compared after Ansible's machine-specific noise is set aside: colour, banner padding, column alignment, blank lines and the warnings Ansible prints about the machine it runs on. A pass here is a pass on the site.

---

[Open the lesson on LearnSome.tech](https://learnsome.tech/learn/ansible-course/m03l03) · [All labs of this lesson](../README.md) · [Course README](../../../README.md)
