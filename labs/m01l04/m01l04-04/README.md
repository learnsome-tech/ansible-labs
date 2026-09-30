# m01l04-04 · Watching a verdict change

**Lesson:** [Your First Ad Hoc Command](https://learnsome.tech/learn/ansible-course/m01l04) (lesson 1.4, module 1: Introduction And Setup) · Pro  
**Check:** Graded

## Goal

You can run a module against a host pattern from the command line, read the result block it returns, tell changed from unchanged in that block, and decide when an ad hoc command is the right tool and when it is a playbook in disguise.

In the lesson: Idempotency is not a playbook feature. It lives in the modules, so you can watch it from the command line. Ask for a directory to exist. The verdict is changed, and the data says changed is true, because there was no such directory and now there is. Ask for exactly the same thing again and the verdict is success with changed false. The module looked, found the directory already in the state you described, and did nothing. Only the first two lines of each block are shown here, because the file module reports the owner, the group and the permissions as well, and those are not the point right now. Two more things worth noticing: the module name is written in its short form, which is allowed on the command line, and the arguments are quoted because there are two of them.

## Files

- [`starter/ansible.cfg`](starter/ansible.cfg)
- [`starter/inventory`](starter/inventory)
- [`starter/run.sh`](starter/run.sh): the command the lesson ran
- [`starter/shell-watching-a-verdict-change.sh`](starter/shell-watching-a-verdict-change.sh): the listing from the lesson
- [`expected.txt`](expected.txt): the output the check compares with
- [`check.json`](check.json): how `./check` runs and checks this lab

## Steps

1. Go to the starter: `cd labs/m01l04/m01l04-04/starter`
2. Read `shell-watching-a-verdict-change.sh`.
3. The session types these commands, in order:

   ```sh
   ansible all -m file -a "path=demo state=directory" | head -2
   ansible all -m file -a "path=demo state=directory" | head -2
   ```
4. Run it: `bash shell-watching-a-verdict-change.sh`.
5. Check it from the repository root: `./check m01l04-04`.

## Expected output

```text
localhost | CHANGED => {
    "changed": true,
localhost | SUCCESS => {
    "changed": false,
```

## How to check

`./check m01l04-04` copies `starter/` into a scratch directory and runs `bash shell-watching-a-verdict-change.sh` there, the way the site's lab sandbox does: that directory is the working directory and `HOME`, `LANG=C.UTF-8`, `TZ=UTC`, a limit of 10 seconds and 256 KiB of output per stream.

It passes when the output matches `expected.txt` by the site's rules, within the limits. The expected output is the output recorded in the session itself (its `#   ` comment lines), collected into `expected.txt`. Output is compared line by line; spaces at the end of a line and blank lines at the end do not count, and if that differs standard output followed by standard error is compared with Python traceback frames and blank lines set aside. A pass here is a pass on the site.

---

[Open the lesson on LearnSome.tech](https://learnsome.tech/learn/ansible-course/m01l04) · [All labs of this lesson](../README.md) · [Course README](../../../README.md)
