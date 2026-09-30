# m04l05-02 · Render a greeting template

**Lesson:** [Templates With Jinja](https://learnsome.tech/learn/ansible-course/m04l05) (lesson 4.5, module 4: Variables, Facts And Logic) · Pro  
**Check:** Read along

## Goal

You can render a Jinja template from variables and keep the template readable.

In the lesson: This template has two expressions. The owner and environment values will come from the play or inventory, and the surrounding text stays in the template. The j two suffix is a convention that tells readers this file contains Jinja. Keep expressions small and move complicated preparation into variables or tasks. A template should make the final text obvious when someone opens it, even if the values change for every host.

## Files

- [`starter/message.j2`](starter/message.j2): the listing from the lesson
- [`check.json`](check.json): how `./check` runs and checks this lab

## Steps

1. Read `starter/message.j2` alongside the lesson.

## How to check

**Read along.** It is a listing to read alongside the lesson, not a program to run.

There is nothing to check: `./check m04l05-02` says so and moves on.

---

[Open the lesson on LearnSome.tech](https://learnsome.tech/learn/ansible-course/m04l05) · [All labs of this lesson](../README.md) · [Course README](../../../README.md)
