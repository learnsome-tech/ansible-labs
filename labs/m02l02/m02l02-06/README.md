# m02l02-06 · Which value actually wins

**Lesson:** [Host Groups And Host Variables](https://learnsome.tech/learn/ansible-course/m02l02) (lesson 2.2, module 2: Inventory And Targets) · Pro  
**Check:** Graded

## Goal

You can attach variables to a group or to a single host using the group vars and host vars directories, predict which value wins when several apply, and read the resolved set of variables for any host without running a play.

In the lesson: Now ask the tool rather than reasoning about it. Take the host with its own file first. It gets the port from its host file, the document root from its group, and the site name from the file that covers everything. Three files, one merged answer. Now a web server without one of its own. Same document root, same site name, but the port comes from the group, because nothing nearer overrode it. Finally the database, which is in neither of those groups. It has the site name and the original port, and no document root at all, because that value was never true of it. This command is how you settle an argument about variables in ten seconds.

## Files

- [`starter/ansible.cfg`](starter/ansible.cfg)
- [`starter/group_vars/all.yml`](starter/group_vars/all.yml)
- [`starter/group_vars/webservers.yml`](starter/group_vars/webservers.yml)
- [`starter/host_vars/web1.example.com.yml`](starter/host_vars/web1.example.com.yml)
- [`starter/inventory`](starter/inventory)
- [`starter/run.sh`](starter/run.sh): the command the lesson ran
- [`starter/shell-which-value-actually-wins.sh`](starter/shell-which-value-actually-wins.sh): the listing from the lesson
- [`expected.txt`](expected.txt): the output the check compares with
- [`check.json`](check.json): how `./check` runs and checks this lab

## Steps

1. Go to the starter: `cd labs/m02l02/m02l02-06/starter`
2. Read `shell-which-value-actually-wins.sh`.
3. The session types these commands, in order:

   ```sh
   ansible-inventory --host web1.example.com
   ansible-inventory --host web2.example.com
   ansible-inventory --host db1.example.com
   ```
4. Run it: `bash shell-which-value-actually-wins.sh`.
5. Check it from the repository root: `./check m02l02-06`.
6. The site offers these commands for this lab; the first is the default, and the only one graded. Run another with `./check m02l02-06 --command=<id>`:
   - `recorded` (Recorded session): `bash shell-which-value-actually-wins.sh`
   - `step-1` (Step 1): `ansible-inventory --host web1.example.com`
   - `step-2` (Step 2): `ansible-inventory --host web2.example.com`
   - `step-3` (Step 3): `ansible-inventory --host db1.example.com`

## Expected output

```text
{
    "document_root": "/srv/www",
    "http_port": 8443,
    "site_name": "shop"
}
{
    "document_root": "/srv/www",
    "http_port": 8080,
    "site_name": "shop"
}
{
    "http_port": 80,
    "site_name": "shop"
}
```

## How to check

`./check m02l02-06` copies `starter/` into a scratch directory and runs `bash shell-which-value-actually-wins.sh` there, the way the site's lab sandbox does: that directory is the working directory and `HOME`, `LANG=C.UTF-8`, `TZ=UTC`, a limit of 10 seconds and 256 KiB of output per stream.

It passes when the output matches `expected.txt` by the site's rules, within the limits. The expected output is the output recorded in the session itself (its `#   ` comment lines), collected into `expected.txt`. Output is compared line by line; spaces at the end of a line and blank lines at the end do not count, and if that differs standard output followed by standard error is compared with Python traceback frames and blank lines set aside. A pass here is a pass on the site.

---

[Open the lesson on LearnSome.tech](https://learnsome.tech/learn/ansible-course/m02l02) · [All labs of this lesson](../README.md) · [Course README](../../../README.md)
