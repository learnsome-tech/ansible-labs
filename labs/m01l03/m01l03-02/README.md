# m01l03-02 · Installing into an environment of its own

**Lesson:** [Installing Ansible](https://learnsome.tech/learn/ansible-course/m01l03) (lesson 1.3, module 1: Introduction And Setup) · Free  
**Check:** Read along

## Goal

You can install Ansible into an isolated Python environment, say what the core engine gives you and what the community package adds on top, pin the version for a team, and prove the control node works with a playbook rather than a version string.

In the lesson: Install it into an environment of its own rather than into the system Python. The first command makes a virtual environment in a hidden directory beside your project. Activate it, and from then on this shell has its own set of packages, separate from the operating system's. Then install the core package. The quiet flag is there because the normal output is a wall of dependency resolution that tells you nothing useful. Finally, ask which version landed. Doing it this way means uninstalling is deleting a directory, two projects can hold different versions, and nothing you do here can damage a Python that some other part of the machine depends on. This panel is not run by the course build, because it needs to reach the package index over the network.

## Files

- [`starter/NOT-RUNNABLE-HERE.txt`](starter/NOT-RUNNABLE-HERE.txt)
- [`starter/ansible.cfg`](starter/ansible.cfg)
- [`starter/inventory`](starter/inventory)
- [`starter/run.sh`](starter/run.sh): the command the lesson ran
- [`starter/shell-installing-into-an-environment-of-its-own.sh`](starter/shell-installing-into-an-environment-of-its-own.sh): the listing from the lesson
- [`check.json`](check.json): how `./check` runs and checks this lab

## Steps

1. Read `starter/shell-installing-into-an-environment-of-its-own.sh` alongside the lesson.
2. On a machine that has what it needs, the lesson ran it with:

   ```sh
   bash shell-installing-into-an-environment-of-its-own.sh
   ```

## How to check

**Read along.** It is a listing to read alongside the lesson, not a program to run.

There is nothing to check: `./check m01l03-02` says so and moves on.

---

[Open the lesson on LearnSome.tech](https://learnsome.tech/learn/ansible-course/m01l03) · [All labs of this lesson](../README.md) · [Course README](../../../README.md)
