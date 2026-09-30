# m02l04-04 · Proving which account and which machine

**Lesson:** [Connections And Privilege Escalation](https://learnsome.tech/learn/ansible-course/m02l04) (lesson 2.4, module 2: Inventory And Targets) · Pro  
**Check:** Graded

## Goal

You can set the connection variables that decide how Ansible reaches a host, choose the right connection plugin, and escalate privilege correctly with become at the play or task level rather than logging in as root.

In the lesson: Two commands worth knowing when a connection behaves oddly. The first asks which machine it landed on, and the answer names the operating system kernel. The second asks which account it ran as, as a number, which avoids any confusion about display names. On this control node the answers describe the laptop, because the local connection was used. Point the same pair at a real host and they tell you, in two seconds, whether you reached the machine you meant and whether you arrived as the user you expected. Both report changed, because the command module always does, which you met in module one.

## Files

- [`starter/ansible.cfg`](starter/ansible.cfg)
- [`starter/inventory`](starter/inventory)
- [`starter/run.sh`](starter/run.sh): the command the lesson ran
- [`starter/shell-proving-which-account-and-which-machine.sh`](starter/shell-proving-which-account-and-which-machine.sh): the listing from the lesson
- [`expected.txt`](expected.txt): the output the check compares with
- [`check.json`](check.json): how `./check` runs and checks this lab

## Steps

1. Go to the starter: `cd labs/m02l04/m02l04-04/starter`
2. Read `shell-proving-which-account-and-which-machine.sh`.
3. The session types these commands, in order:

   ```sh
   ansible localhost -m ansible.builtin.command -a "uname -s"
   ansible localhost -m ansible.builtin.command -a "id -u"
   ```
4. Run it: `bash shell-proving-which-account-and-which-machine.sh`.
5. Check it from the repository root: `./check m02l04-04`.

## Expected output

```text
localhost | CHANGED | rc=0 >>
Linux
localhost | CHANGED | rc=0 >>
10001
```

## How to check

`./check m02l04-04` copies `starter/` into a scratch directory and runs `bash shell-proving-which-account-and-which-machine.sh` there, the way the site's lab sandbox does: that directory is the working directory and `HOME`, `LANG=C.UTF-8`, `TZ=UTC`, a limit of 10 seconds and 256 KiB of output per stream.

It passes when the output matches `expected.txt` by the site's rules, within the limits. The expected output is the output recorded in the session itself (its `#   ` comment lines), collected into `expected.txt`. Output is compared line by line; spaces at the end of a line and blank lines at the end do not count, and if that differs standard output followed by standard error is compared with Python traceback frames and blank lines set aside. A pass here is a pass on the site.

---

[Open the lesson on LearnSome.tech](https://learnsome.tech/learn/ansible-course/m02l04) · [All labs of this lesson](../README.md) · [Course README](../../../README.md)
