# m03l04-03 · Run the rehearsal

**Lesson:** [Check Mode And Diff](https://learnsome.tech/learn/ansible-course/m03l04) (lesson 3.4, module 3: Playbooks, Plays And Tasks) · Pro  
**Check:** Read along

## Goal

You can preview a playbook with check mode and inspect proposed file changes with diff output.

In the lesson: Run the rehearsal with the check flag and the diff flag. The task reports changed because Ansible predicts that the file would be created or replaced, but the file is not written. When a prior version exists, the diff appears between the task heading and its result. The recap still counts the predicted change, which is useful when you are reviewing scope. After the preview, remove the check flag only when the selected hosts, variables, and proposed differences all make sense.

## Files

- [`starter/ansible.cfg`](starter/ansible.cfg)
- [`starter/inventory`](starter/inventory)
- [`starter/preview.yml`](starter/preview.yml): the listing from the lesson
- [`starter/run.sh`](starter/run.sh): the command the lesson ran
- [`check.json`](check.json): how `./check` runs and checks this lab

## Steps

1. Read `starter/preview.yml` alongside the lesson.
2. On a machine that has what it needs, the lesson ran it with:

   ```sh
   ansible-playbook --check --diff preview.yml
   ```

## How to check

**Read along.** The listing does not run cleanly in the lab sandbox (it relies on something the sandbox cannot provide), so the site shows it read-only.

There is nothing to check: `./check m03l04-03` says so and moves on.

---

[Open the lesson on LearnSome.tech](https://learnsome.tech/learn/ansible-course/m03l04) · [All labs of this lesson](../README.md) · [Course README](../../../README.md)
