# m02l03-03 · Running it as an inventory

**Lesson:** [Dynamic Inventory](https://learnsome.tech/learn/ansible-course/m02l03) (lesson 2.3, module 2: Inventory And Targets) · Pro  
**Check:** Graded

## Goal

You can explain why a written host list fails in an elastic environment, read and run an inventory script, prefer an inventory plugin to a script, and build groups automatically from host attributes with keyed groups.

In the lesson: Two details decide whether this works. First, it must be executable, because Ansible decides between a file to parse and a program to run by asking the operating system, not by looking at the name. Second, pass it with the inventory flag exactly as you would pass a file. Then the same graph command you already know prints the tree, and the groups in it were never written down anywhere: they came out of the program a moment ago. Resolve one host and you get the variable that the meta key carried. From here upwards, nothing else in Ansible can tell the difference between this and a file.

## Files

- [`starter/ansible.cfg`](starter/ansible.cfg)
- [`starter/dynamic.py`](starter/dynamic.py)
- [`starter/inventory`](starter/inventory)
- [`starter/run.sh`](starter/run.sh): the command the lesson ran
- [`starter/shell-running-it-as-an-inventory.sh`](starter/shell-running-it-as-an-inventory.sh): the listing from the lesson
- [`expected.txt`](expected.txt): the output the check compares with
- [`check.json`](check.json): how `./check` runs and checks this lab

## Steps

1. Go to the starter: `cd labs/m02l03/m02l03-03/starter`
2. Read `shell-running-it-as-an-inventory.sh`.
3. The session types these commands, in order:

   ```sh
   chmod +x dynamic.py
   ansible-inventory -i dynamic.py --graph
   ansible-inventory -i dynamic.py --host web1.example.com
   ```
4. Run it: `bash shell-running-it-as-an-inventory.sh`.
5. Check it from the repository root: `./check m02l03-03`.
6. The site offers these commands for this lab; the first is the default, and the only one graded. Run another with `./check m02l03-03 --command=<id>`:
   - `recorded` (Recorded session): `bash shell-running-it-as-an-inventory.sh`
   - `step-1` (Step 1): `chmod +x dynamic.py`
   - `step-2` (Step 2): `ansible-inventory -i dynamic.py --graph`
   - `step-3` (Step 3): `ansible-inventory -i dynamic.py --host web1.example.com`

## Expected output

```text
@all:
  |--@ungrouped:
  |--@webservers:
  |  |--web1.example.com
  |  |--web2.example.com
  |--@dbservers:
  |  |--db1.example.com
{
    "http_port": 8443
}
```

## How to check

`./check m02l03-03` copies `starter/` into a scratch directory and runs `bash shell-running-it-as-an-inventory.sh` there, the way the site's lab sandbox does: that directory is the working directory and `HOME`, `LANG=C.UTF-8`, `TZ=UTC`, a limit of 10 seconds and 256 KiB of output per stream.

It passes when the output matches `expected.txt` by the site's rules, within the limits. The expected output is the output recorded in the session itself (its `#   ` comment lines), collected into `expected.txt`. Output is compared line by line; spaces at the end of a line and blank lines at the end do not count, and if that differs standard output followed by standard error is compared with Python traceback frames and blank lines set aside. A pass here is a pass on the site.

---

[Open the lesson on LearnSome.tech](https://learnsome.tech/learn/ansible-course/m02l03) · [All labs of this lesson](../README.md) · [Course README](../../../README.md)
