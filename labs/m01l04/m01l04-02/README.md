# m01l04-02 · The shortest useful command

**Lesson:** [Your First Ad Hoc Command](https://learnsome.tech/learn/ansible-course/m01l04) (lesson 1.4, module 1: Introduction And Setup) · Pro  
**Check:** Graded

## Goal

You can run a module against a host pattern from the command line, read the result block it returns, tell changed from unchanged in that block, and decide when an ad hoc command is the right tool and when it is a playbook in disguise.

In the lesson: Here are the three parts in practice. The word all is the host pattern, meaning every host in the inventory. The flag before the module name introduces the module, and here it is the ping module. The answer comes back as one block per host, headed by the host name and a verdict. Now the same shape with the debug module, which takes an argument, introduced by the other flag. The argument is a key and a value joined by an equals sign. Debug does nothing except report, which makes it the module to reach for when you are learning the shape of a command rather than trying to change anything.

## Files

- [`starter/ansible.cfg`](starter/ansible.cfg)
- [`starter/inventory`](starter/inventory)
- [`starter/run.sh`](starter/run.sh): the command the lesson ran
- [`starter/shell-the-shortest-useful-command.sh`](starter/shell-the-shortest-useful-command.sh): the listing from the lesson
- [`expected.txt`](expected.txt): the output the check compares with
- [`check.json`](check.json): how `./check` runs and checks this lab

## Steps

1. Go to the starter: `cd labs/m01l04/m01l04-02/starter`
2. Read `shell-the-shortest-useful-command.sh`.
3. The session types these commands, in order:

   ```sh
   ansible all -m ansible.builtin.ping
   ansible all -m ansible.builtin.debug -a msg=hello
   ```
4. Run it: `bash shell-the-shortest-useful-command.sh`.
5. Check it from the repository root: `./check m01l04-02`.
6. The site offers these commands for this lab; the first is the default, and the only one graded. Run another with `./check m01l04-02 --command=<id>`:
   - `recorded` (Recorded session): `bash shell-the-shortest-useful-command.sh`
   - `step-1` (Step 1): `ansible all -m ansible.builtin.ping`
   - `step-2` (Step 2): `ansible all -m ansible.builtin.debug -a msg=hello`

## Expected output

```text
localhost | SUCCESS => {
    "changed": false,
    "ping": "pong"
}
localhost | SUCCESS => {
    "msg": "hello"
}
```

## How to check

`./check m01l04-02` copies `starter/` into a scratch directory and runs `bash shell-the-shortest-useful-command.sh` there, the way the site's lab sandbox does: that directory is the working directory and `HOME`, `LANG=C.UTF-8`, `TZ=UTC`, a limit of 10 seconds and 256 KiB of output per stream.

It passes when the output matches `expected.txt` by the site's rules, within the limits. The expected output is the output recorded in the session itself (its `#   ` comment lines), collected into `expected.txt`. Output is compared line by line; spaces at the end of a line and blank lines at the end do not count, and if that differs standard output followed by standard error is compared with Python traceback frames and blank lines set aside. A pass here is a pass on the site.

---

[Open the lesson on LearnSome.tech](https://learnsome.tech/learn/ansible-course/m01l04) · [All labs of this lesson](../README.md) · [Course README](../../../README.md)
