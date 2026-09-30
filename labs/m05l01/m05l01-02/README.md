# m05l01-02 · A role tree

**Lesson:** [The Standard Directory Layout And Roles](https://learnsome.tech/learn/ansible-course/m05l01) (lesson 5.1, module 5: Roles And Collections) · Pro  
**Check:** Read along

## Goal

You can recognize a role layout and explain how it packages reusable automation.

In the lesson: This small listing shows the standard homes inside a role named web. The defaults file holds overridable starting values. Tasks main is the entry point. Handlers main holds reactions, templates holds Jinja files, files holds files copied without rendering, and vars main holds role variables that are normally more tightly controlled. The README is part of the role contract. A real role may add tests and metadata, but the familiar directories are what let Ansible discover and include its pieces.

## Files

- [`starter/README.md`](starter/README.md): the listing from the lesson
- [`check.json`](check.json): how `./check` runs and checks this lab

## Steps

1. Read `starter/README.md` alongside the lesson.

## How to check

**Read along.** It is a listing to read alongside the lesson, not a program to run.

There is nothing to check: `./check m05l01-02` says so and moves on.

---

[Open the lesson on LearnSome.tech](https://learnsome.tech/learn/ansible-course/m05l01) · [All labs of this lesson](../README.md) · [Course README](../../../README.md)
