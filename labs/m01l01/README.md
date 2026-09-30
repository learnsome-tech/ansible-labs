# m01l01 · What Configuration Management Is

Module 1: Introduction And Setup · lesson 1.1 · Free · [Open the lesson](https://learnsome.tech/learn/ansible-course/m01l01)

**Goal:** You can say what configuration management is, why it comes after provisioning rather than instead of it, and demonstrate the difference between a script that repeats its work and a playbook that does not.

## Labs

| Lab | What it is | Check |
| --- | --- | --- |
| [m01l01-03](m01l01-03/) | The script that describes steps | Read along |
| [m01l01-04](m01l01-04/) | Running it twice | Graded |
| [m01l01-06](m01l01-06/) | The same intent, as a playbook | Checker |
| [m01l01-07](m01l01-07/) | The first run does the work | Graded |
| [m01l01-08](m01l01-08/) | The second run does nothing at all | Graded |

## Check yourself

- Which job comes first, provisioning or configuration management, and why can the order not be reversed?
- Why did running setup.sh twice leave two copies of the same configuration line?
- In your own words, what does idempotent mean?
- A play reports ok on every task. What does that tell you about the host?
- You run the same play hourly and one host suddenly reports a change. What has probably happened?

---

[Course README](../../README.md) · [Ansible Configuration Management at Scale on LearnSome.tech](https://learnsome.tech/courses/ansible-course)
