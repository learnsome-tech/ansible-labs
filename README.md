<img src="https://learnsome.tech/logo.png" width="48" alt="LearnSome.tech">

# Ansible Configuration Management at Scale

6 modules, 28 lessons: Introduction And Setup; Inventory And Targets; Playbooks, Plays And Tasks; Variables, Facts And Logic; Roles And Collections; Security And Practices.

## Watch and read

- **Course page**: [https://learnsome.tech/courses/ansible-course](https://learnsome.tech/courses/ansible-course)
- **Video player**: [https://learnsome.tech/courses/ansible-course/watch](https://learnsome.tech/courses/ansible-course/watch)
- **Handbook PDF**: [https://learnsome.tech/handbooks/ansible/book.pdf](https://learnsome.tech/handbooks/ansible/book.pdf)
- **On-site handbook**: [https://learnsome.tech/courses/ansible-course/book](https://learnsome.tech/courses/ansible-course/book)

## What is in this repository

This repository contains code artifacts, exercises and reference files for the lessons in this course.
28 lessons include a `labs/<lessonId>/` folder.
Each folder is named after the lesson identifier (e.g. `labs/m01l01/`) and contains the
artifact files shown in the course video, an `EXERCISES.md` with hands-on tasks, and
sub-directories named by artifact reference (e.g. `m01l01-02/`).

## Lessons

| # | Lesson | Watch | Labs | Handbook |
|---|--------|-------|------|----------|
| | **Introduction And Setup** | | | |
| 1 | What Configuration Management Is | [▶](https://learnsome.tech/courses/ansible-course/watch?lesson=m01l01) | [labs/m01l01/](labs/m01l01/) | [§](https://learnsome.tech/courses/ansible-course/book#lesson-1-1) |
| 2 | Ansible Architecture And The Control Node | [▶](https://learnsome.tech/courses/ansible-course/watch?lesson=m01l02) | [labs/m01l02/](labs/m01l02/) | [§](https://learnsome.tech/courses/ansible-course/book#lesson-1-2) |
| 3 | Installing Ansible | [▶](https://learnsome.tech/courses/ansible-course/watch?lesson=m01l03) | [labs/m01l03/](labs/m01l03/) | [§](https://learnsome.tech/courses/ansible-course/book#lesson-1-3) |
| 4 | Your First Ad Hoc Command | [▶](https://learnsome.tech/courses/ansible-course/watch?lesson=m01l04) | [labs/m01l04/](labs/m01l04/) | [§](https://learnsome.tech/courses/ansible-course/book#lesson-1-4) |
| | **Inventory And Targets** | | | |
| 5 | The Static Inventory File | [▶](https://learnsome.tech/courses/ansible-course/watch?lesson=m02l01) | [labs/m02l01/](labs/m02l01/) | [§](https://learnsome.tech/courses/ansible-course/book#lesson-2-1) |
| 6 | Host Groups And Host Variables | [▶](https://learnsome.tech/courses/ansible-course/watch?lesson=m02l02) | [labs/m02l02/](labs/m02l02/) | [§](https://learnsome.tech/courses/ansible-course/book#lesson-2-2) |
| 7 | Dynamic Inventory | [▶](https://learnsome.tech/courses/ansible-course/watch?lesson=m02l03) | [labs/m02l03/](labs/m02l03/) | [§](https://learnsome.tech/courses/ansible-course/book#lesson-2-3) |
| 8 | Connections And Privilege Escalation | [▶](https://learnsome.tech/courses/ansible-course/watch?lesson=m02l04) | [labs/m02l04/](labs/m02l04/) | [§](https://learnsome.tech/courses/ansible-course/book#lesson-2-4) |
| | **Playbooks, Plays And Tasks** | | | |
| 9 | Playbook Syntax And YAML | [▶](https://learnsome.tech/courses/ansible-course/watch?lesson=m03l01) | [labs/m03l01/](labs/m03l01/) | [§](https://learnsome.tech/courses/ansible-course/book#lesson-3-1) |
| 10 | Writing Your First Playbook | [▶](https://learnsome.tech/courses/ansible-course/watch?lesson=m03l02) | [labs/m03l02/](labs/m03l02/) | [§](https://learnsome.tech/courses/ansible-course/book#lesson-3-2) |
| 11 | Modules And Idempotency | [▶](https://learnsome.tech/courses/ansible-course/watch?lesson=m03l03) | [labs/m03l03/](labs/m03l03/) | [§](https://learnsome.tech/courses/ansible-course/book#lesson-3-3) |
| 12 | Check Mode And Diff | [▶](https://learnsome.tech/courses/ansible-course/watch?lesson=m03l04) | [labs/m03l04/](labs/m03l04/) | [§](https://learnsome.tech/courses/ansible-course/book#lesson-3-4) |
| 13 | Handlers And Notify | [▶](https://learnsome.tech/courses/ansible-course/watch?lesson=m03l05) | [labs/m03l05/](labs/m03l05/) | [§](https://learnsome.tech/courses/ansible-course/book#lesson-3-5) |
| | **Variables, Facts And Logic** | | | |
| 14 | Variables And Precedence | [▶](https://learnsome.tech/courses/ansible-course/watch?lesson=m04l01) | [labs/m04l01/](labs/m04l01/) | [§](https://learnsome.tech/courses/ansible-course/book#lesson-4-1) |
| 15 | Gathering Facts | [▶](https://learnsome.tech/courses/ansible-course/watch?lesson=m04l02) | [labs/m04l02/](labs/m04l02/) | [§](https://learnsome.tech/courses/ansible-course/book#lesson-4-2) |
| 16 | Conditionals | [▶](https://learnsome.tech/courses/ansible-course/watch?lesson=m04l03) | [labs/m04l03/](labs/m04l03/) | [§](https://learnsome.tech/courses/ansible-course/book#lesson-4-3) |
| 17 | Loops | [▶](https://learnsome.tech/courses/ansible-course/watch?lesson=m04l04) | [labs/m04l04/](labs/m04l04/) | [§](https://learnsome.tech/courses/ansible-course/book#lesson-4-4) |
| 18 | Templates With Jinja | [▶](https://learnsome.tech/courses/ansible-course/watch?lesson=m04l05) | [labs/m04l05/](labs/m04l05/) | [§](https://learnsome.tech/courses/ansible-course/book#lesson-4-5) |
| 19 | Error Handling With Block, Rescue And Always | [▶](https://learnsome.tech/courses/ansible-course/watch?lesson=m04l06) | [labs/m04l06/](labs/m04l06/) | [§](https://learnsome.tech/courses/ansible-course/book#lesson-4-6) |
| | **Roles And Collections** | | | |
| 20 | The Standard Directory Layout And Roles | [▶](https://learnsome.tech/courses/ansible-course/watch?lesson=m05l01) | [labs/m05l01/](labs/m05l01/) | [§](https://learnsome.tech/courses/ansible-course/book#lesson-5-1) |
| 21 | Writing A Role | [▶](https://learnsome.tech/courses/ansible-course/watch?lesson=m05l02) | [labs/m05l02/](labs/m05l02/) | [§](https://learnsome.tech/courses/ansible-course/book#lesson-5-2) |
| 22 | Using Collections | [▶](https://learnsome.tech/courses/ansible-course/watch?lesson=m05l03) | [labs/m05l03/](labs/m05l03/) | [§](https://learnsome.tech/courses/ansible-course/book#lesson-5-3) |
| 23 | Ansible Galaxy | [▶](https://learnsome.tech/courses/ansible-course/watch?lesson=m05l04) | [labs/m05l04/](labs/m05l04/) | [§](https://learnsome.tech/courses/ansible-course/book#lesson-5-4) |
| 24 | Testing With Molecule | [▶](https://learnsome.tech/courses/ansible-course/watch?lesson=m05l05) | [labs/m05l05/](labs/m05l05/) | [§](https://learnsome.tech/courses/ansible-course/book#lesson-5-5) |
| | **Security And Practices** | | | |
| 25 | Securing Data With Ansible Vault | [▶](https://learnsome.tech/courses/ansible-course/watch?lesson=m06l01) | [labs/m06l01/](labs/m06l01/) | [§](https://learnsome.tech/courses/ansible-course/book#lesson-6-1) |
| 26 | Vault IDs And Multiple Passwords | [▶](https://learnsome.tech/courses/ansible-course/watch?lesson=m06l02) | [labs/m06l02/](labs/m06l02/) | [§](https://learnsome.tech/courses/ansible-course/book#lesson-6-2) |
| 27 | Environment Specific Configuration | [▶](https://learnsome.tech/courses/ansible-course/watch?lesson=m06l03) | [labs/m06l03/](labs/m06l03/) | [§](https://learnsome.tech/courses/ansible-course/book#lesson-6-3) |
| 28 | Performance, Forks And Best Practices | [▶](https://learnsome.tech/courses/ansible-course/watch?lesson=m06l04) | [labs/m06l04/](labs/m06l04/) | [§](https://learnsome.tech/courses/ansible-course/book#lesson-6-4) |

## Exercises

Each lesson folder contains an `EXERCISES.md` with hands-on tasks drawn directly from the course material.
Open the file for a lesson to see the tasks and, where provided, hints.

---

© LearnSome.tech · support@iwantto.learnsome.tech
