# m01l03 · Installing Ansible

Module 1: Introduction And Setup · lesson 1.3 · Free · [Open the lesson](https://learnsome.tech/learn/ansible-course/m01l03)

**Goal:** You can install Ansible into an isolated Python environment, say what the core engine gives you and what the community package adds on top, pin the version for a team, and prove the control node works with a playbook rather than a version string.

## Labs

| Lab | What it is | Check |
| --- | --- | --- |
| [m01l03-02](m01l03-02/) | Installing into an environment of its own | Read along |
| [m01l03-04](m01l03-04/) | Pinning the version, so a team agrees | Read along |
| [m01l03-05](m01l03-05/) | A better test than a version string | Checker |
| [m01l03-06](m01l03-06/) | The control node, proved | Graded |

## Exercises

Open exercises from the lesson, to try on your own. They have no answer files: work them out, and use the labs above as reference.

### Break it on purpose

1. Change the version in requirements.txt to one that does not exist, and install from it.
2. Read the error carefully: what does the package index say it does have?
3. Put the pin back, then add a second fact to the message in check.yml and run it again.
4. Find the name of a fact by running the setup module against your own machine first.

> **Hint:** The setup module prints every fact it collected. Search its output for something you recognise.

## Check yourself

- What does the community package contain that the core package does not?
- Why install into a virtual environment rather than the system Python?
- A playbook works on a laptop and fails in the pipeline. What is the first thing to compare?
- Why is running the check playbook a better test than printing the version?
- The recap says two tasks ran, but check.yml has one task. Where did the other one come from?

---

[Course README](../../README.md) · [Ansible Configuration Management at Scale on LearnSome.tech](https://learnsome.tech/courses/ansible-course)
