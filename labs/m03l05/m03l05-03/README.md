# m03l05-03 · See the handler at the end

**Lesson:** [Handlers And Notify](https://learnsome.tech/learn/ansible-course/m03l05) (lesson 3.5, module 3: Playbooks, Plays And Tasks) · Pro  
**Check:** Read along

## Goal

You can trigger a handler only when a task changes and explain when handlers run.

In the lesson: The run shows the configuration task first. Because it changed, Ansible prints a running handler line after the ordinary task list and then executes the handler. The recap counts both changes. If you run it again without editing the configuration, the task is okay and the handler is absent from the run. That conditional reaction is the useful distinction from putting a reload command directly after every copy task. Handlers let the playbook collect related changes and perform one safe reaction at the end.

## Files

- [`starter/ansible.cfg`](starter/ansible.cfg)
- [`starter/handler.yml`](starter/handler.yml): the listing from the lesson
- [`starter/inventory`](starter/inventory)
- [`starter/run.sh`](starter/run.sh): the command the lesson ran
- [`check.json`](check.json): how `./check` runs and checks this lab

## Steps

1. Read `starter/handler.yml` alongside the lesson.
2. On a machine that has what it needs, the lesson ran it with:

   ```sh
   ansible-playbook handler.yml
   ```

## How to check

**Read along.** The listing does not run cleanly in the lab sandbox (it relies on something the sandbox cannot provide), so the site shows it read-only.

There is nothing to check: `./check m03l05-03` says so and moves on.

---

[Open the lesson on LearnSome.tech](https://learnsome.tech/learn/ansible-course/m03l05) · [All labs of this lesson](../README.md) · [Course README](../../../README.md)
