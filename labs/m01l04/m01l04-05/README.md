# m01l04-05 · The module that can never be idempotent

**Lesson:** [Your First Ad Hoc Command](https://learnsome.tech/learn/ansible-course/m01l04) (lesson 1.4, module 1: Introduction And Setup) · Pro  
**Check:** Graded

## Goal

You can run a module against a host pattern from the command line, read the result block it returns, tell changed from unchanged in that block, and decide when an ad hoc command is the right tool and when it is a playbook in disguise.

In the lesson: Now a module that cannot be idempotent, and it is important to see why. The command module runs whatever you give it on the far side. Its answer has a different shape: the verdict, a return code, and then the raw text the command printed. The verdict is changed, and it will be changed every single time, because the module has no idea what your command does. It cannot know whether echoing a word altered anything, so it assumes the worst. Contrast that with the setup module, the one that collects facts. Asking it for a single fact by filter is the standard way to find out what a host thinks it is, and it reports nothing changed, because looking is not changing.

## Files

- [`starter/ansible.cfg`](starter/ansible.cfg)
- [`starter/inventory`](starter/inventory)
- [`starter/run.sh`](starter/run.sh): the command the lesson ran
- [`starter/shell-the-module-that-can-never-be-idempotent.sh`](starter/shell-the-module-that-can-never-be-idempotent.sh): the listing from the lesson
- [`expected.txt`](expected.txt): the output the check compares with
- [`check.json`](check.json): how `./check` runs and checks this lab

## Steps

1. Go to the starter: `cd labs/m01l04/m01l04-05/starter`
2. Read `shell-the-module-that-can-never-be-idempotent.sh`.
3. The session types these commands, in order:

   ```sh
   ansible all -m ansible.builtin.command -a "echo hello"
   ansible all -m ansible.builtin.setup -a filter=ansible_system
   ```
4. Run it: `bash shell-the-module-that-can-never-be-idempotent.sh`.
5. Check it from the repository root: `./check m01l04-05`.

## Expected output

```text
localhost | CHANGED | rc=0 >>
hello
localhost | SUCCESS => {
    "ansible_facts": {
        "ansible_system": "Linux"
    },
    "changed": false
}
```

## How to check

`./check m01l04-05` copies `starter/` into a scratch directory and runs `bash shell-the-module-that-can-never-be-idempotent.sh` there, the way the site's lab sandbox does: that directory is the working directory and `HOME`, `LANG=C.UTF-8`, `TZ=UTC`, a limit of 10 seconds and 256 KiB of output per stream.

It passes when the output matches `expected.txt` by the site's rules, within the limits. The expected output is the output recorded in the session itself (its `#   ` comment lines), collected into `expected.txt`. Output is compared line by line; spaces at the end of a line and blank lines at the end do not count, and if that differs standard output followed by standard error is compared with Python traceback frames and blank lines set aside. A pass here is a pass on the site.

---

[Open the lesson on LearnSome.tech](https://learnsome.tech/learn/ansible-course/m01l04) · [All labs of this lesson](../README.md) · [Course README](../../../README.md)
