<p>
  <a href="https://learnsome.tech/courses/ansible-course">
    <picture>
      <source media="(prefers-color-scheme: dark)" srcset=".github/assets/wordmark-inverse.svg">
      <img src=".github/assets/wordmark.svg" alt="LearnSome.tech" width="260">
    </picture>
  </a>
</p>

# Ansible Configuration Management at Scale

**Idempotent Playbooks, Roles, Inventory & Ansible Vault**

6 modules, 28 lessons: Introduction And Setup; Inventory And Targets; Playbooks, Plays And Tasks; Variables, Facts And Logic; Roles And Collections; Security And Practices. Intermediate level, about 1 hour.

This repository holds the labs of the LearnSome.tech course [Ansible Configuration Management at Scale](https://learnsome.tech/courses/ansible-course): each lab's starter files, a README with the goal, the steps and the expected output, and `./check`, which tests your work the way the site does.

## Start

[![Open in GitHub Codespaces](https://github.com/codespaces/badge.svg)](https://codespaces.new/learnsome-tech/ansible-labs?quickstart=1)

- **Codespaces:** the badge opens this repository in a dev container with Python 3.14.7 and ansible-core and yamllint, as in the site's lab sandbox.
- **On your machine:**

  ```sh
  git clone https://github.com/learnsome-tech/ansible-labs.git
  cd ansible-labs
  ./check m01l01-04
  ```

  You need Python 3 for `./check`, and for the labs themselves Python 3.14.7 and ansible-core and yamllint. Other versions mostly work, but only the sandbox's versions are sure to print what the site prints. VS Code's Dev Containers extension builds the same container as Codespaces (x86-64).

## Doing a lab

1. Open the lesson on LearnSome.tech and the lab folder beside it: `labs/<lesson>/<lab>/`. The lab README has the goal, the steps and the expected output.
2. Work in the lab's `starter/` folder.
3. From the repository root, run `./check <lab>` (for example `./check m01l01-04`), or `./check <lesson>` for all labs of a lesson, or `./check --all`. `./check --list` shows every lab and how it is checked.

`./check` runs your starter the way the site's lab sandbox does: in a scratch copy that is its working directory and `HOME`, with `LANG=C.UTF-8`, `TZ=UTC`, `input.txt` on standard input, 10 seconds and 256 KiB of output per stream. It then compares the output with the site's own rules, so a pass here is a pass on the site.

| Check | What `./check` does | Labs |
| --- | --- | --- |
| Graded | Runs the program and compares its output with `expected.txt`. | 15 |
| Checker | Validates the file with the checker the site uses (hadolint, kubeconform, actionlint, yamllint, `ansible-playbook --syntax-check` or `terraform validate`); passes when it finds no errors. | 26 |
| Runs, not graded | Runs the program and shows its output; the site gives no pass or fail, and the lab README says why. | 3 |
| Read along | Nothing to run here: the site shows the listing read-only, and the lab README says honestly what it needs (Docker, a cluster, a cloud account...). | 19 |

## What is published, and what is not

Every lab's starter is the code the lesson shows on screen, which is also what the lab editor on the site opens with. Where that code is the whole program, such as a recorded shell session or a script from the video, it is published as it is: it is the lesson content. Nothing beyond the lesson is published. There are no reference solutions and no answers to the lesson exercises, and nothing the site keeps private.

Pro lessons' labs are here as starters too. LearnSome.tech runs and grades your labs in its sandbox, hosts the videos and keeps your progress; running and grading a Pro lab on the site needs Pro.

## Modules and lessons

### Module 1: Introduction And Setup

| # | Lesson | Labs | Access |
| --- | --- | --- | --- |
| 1.1 | [What Configuration Management Is](https://learnsome.tech/learn/ansible-course/m01l01) | [5 labs](labs/m01l01/) | Free |
| 1.2 | [Ansible Architecture And The Control Node](https://learnsome.tech/learn/ansible-course/m01l02) | [5 labs](labs/m01l02/) | Free |
| 1.3 | [Installing Ansible](https://learnsome.tech/learn/ansible-course/m01l03) | [4 labs](labs/m01l03/) | Free |
| 1.4 | [Your First Ad Hoc Command](https://learnsome.tech/learn/ansible-course/m01l04) | [3 labs](labs/m01l04/) | Pro |

### Module 2: Inventory And Targets

| # | Lesson | Labs | Access |
| --- | --- | --- | --- |
| 2.1 | [The Static Inventory File](https://learnsome.tech/learn/ansible-course/m02l01) | [5 labs](labs/m02l01/) | Pro |
| 2.2 | [Host Groups And Host Variables](https://learnsome.tech/learn/ansible-course/m02l02) | [5 labs](labs/m02l02/) | Pro |
| 2.3 | [Dynamic Inventory](https://learnsome.tech/learn/ansible-course/m02l03) | [6 labs](labs/m02l03/) | Pro |
| 2.4 | [Connections And Privilege Escalation](https://learnsome.tech/learn/ansible-course/m02l04) | [4 labs](labs/m02l04/) | Pro |

### Module 3: Playbooks, Plays And Tasks

| # | Lesson | Labs | Access |
| --- | --- | --- | --- |
| 3.1 | [Playbook Syntax And YAML](https://learnsome.tech/learn/ansible-course/m03l01) | [2 labs](labs/m03l01/) | Pro |
| 3.2 | [Writing Your First Playbook](https://learnsome.tech/learn/ansible-course/m03l02) | [2 labs](labs/m03l02/) | Pro |
| 3.3 | [Modules And Idempotency](https://learnsome.tech/learn/ansible-course/m03l03) | [2 labs](labs/m03l03/) | Pro |
| 3.4 | [Check Mode And Diff](https://learnsome.tech/learn/ansible-course/m03l04) | [2 labs](labs/m03l04/) | Pro |
| 3.5 | [Handlers And Notify](https://learnsome.tech/learn/ansible-course/m03l05) | [2 labs](labs/m03l05/) | Pro |

### Module 4: Variables, Facts And Logic

| # | Lesson | Labs | Access |
| --- | --- | --- | --- |
| 4.1 | [Variables And Precedence](https://learnsome.tech/learn/ansible-course/m04l01) | [1 lab](labs/m04l01/) | Pro |
| 4.2 | [Gathering Facts](https://learnsome.tech/learn/ansible-course/m04l02) | [1 lab](labs/m04l02/) | Pro |
| 4.3 | [Conditionals](https://learnsome.tech/learn/ansible-course/m04l03) | [1 lab](labs/m04l03/) | Pro |
| 4.4 | [Loops](https://learnsome.tech/learn/ansible-course/m04l04) | [1 lab](labs/m04l04/) | Pro |
| 4.5 | [Templates With Jinja](https://learnsome.tech/learn/ansible-course/m04l05) | [2 labs](labs/m04l05/) | Pro |
| 4.6 | [Error Handling With Block, Rescue And Always](https://learnsome.tech/learn/ansible-course/m04l06) | [1 lab](labs/m04l06/) | Pro |

### Module 5: Roles And Collections

| # | Lesson | Labs | Access |
| --- | --- | --- | --- |
| 5.1 | [The Standard Directory Layout And Roles](https://learnsome.tech/learn/ansible-course/m05l01) | [1 lab](labs/m05l01/) | Pro |
| 5.2 | [Writing A Role](https://learnsome.tech/learn/ansible-course/m05l02) | [1 lab](labs/m05l02/) | Pro |
| 5.3 | [Using Collections](https://learnsome.tech/learn/ansible-course/m05l03) | [1 lab](labs/m05l03/) | Pro |
| 5.4 | [Ansible Galaxy](https://learnsome.tech/learn/ansible-course/m05l04) | [1 lab](labs/m05l04/) | Pro |
| 5.5 | [Testing With Molecule](https://learnsome.tech/learn/ansible-course/m05l05) | [1 lab](labs/m05l05/) | Pro |

### Module 6: Security And Practices

| # | Lesson | Labs | Access |
| --- | --- | --- | --- |
| 6.1 | [Securing Data With Ansible Vault](https://learnsome.tech/learn/ansible-course/m06l01) | [1 lab](labs/m06l01/) | Pro |
| 6.2 | [Vault IDs And Multiple Passwords](https://learnsome.tech/learn/ansible-course/m06l02) | [1 lab](labs/m06l02/) | Pro |
| 6.3 | [Environment Specific Configuration](https://learnsome.tech/learn/ansible-course/m06l03) | [1 lab](labs/m06l03/) | Pro |
| 6.4 | [Performance, Forks And Best Practices](https://learnsome.tech/learn/ansible-course/m06l04) | [1 lab](labs/m06l04/) | Pro |

**Free** lessons are open to anyone with a free LearnSome.tech account; **Pro** lessons need a Pro membership to watch, run and grade on the site.

## Licence

- **Code** (starter files, `check` and `.learnsome/`, the dev container and the workflows) is under the [MIT licence](LICENSE).
- **Written text** (the READMEs, lab instructions, lesson text, exercises and questions) is under [CC BY-NC-SA 4.0](LICENSE-text.md): share and adapt it with attribution to LearnSome.tech, not commercially, under the same licence.
- The LearnSome.tech name and logo are not covered by either licence.

## Contributing and security

This repository is generated from the course. Report a broken lab or a content error [as an issue](../../issues/new/choose); see [CONTRIBUTING.md](CONTRIBUTING.md). Security reports go to [SECURITY.md](SECURITY.md).

© 2026 LearnSome.tech
