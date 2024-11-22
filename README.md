# Local Drills

<p align="center">
:zap: Try Harder :zap:
</p>

<p align="center">
  <img src="https://raw.githubusercontent.com/energon-a-secas/local-drills/refs/heads/main/assets/localstack-logo-modified.png" alt="Banner">
</p>


<p align="center">
  <a href="#overview">Overview</a> •
  <a href="#solutions">Solutions</a> •
  <a href="#contributing">Contributing</a>
  <br/>
  <a href="https://github.com/energon-a-secas/local-drills/tree/main/localstack" target="_blank">☁️ AWS</a> •
  <a href="https://github.com/energon-a-secas/local-drills/tree/main/minikube" target="_blank">💻 Minikube</a>
</p>

---

## Overview

This repository offers a collection of near-real-world simulations for AWS and EKS, designed for troubleshooting and as challenges.

Don't worry about cloud costs; everything you do will be executed locally using tools like LocalStack and Minikube.

Our three goals:

- 1️⃣ Give the chance to learn from others by tackling challenges you haven’t encountered yet.
- 2️⃣ Help you understand what you don't know.
- 3️⃣ Double as interview challenges.

Online course labs rarely throw curveballs your way. We want to make a difference by providing interesting cases that may help you.

More about this at the [Curve Ball Approach](#the-curve-ball-approach) section.

<br>

## Solutions

- [AWS Drills](./localstack/README.md): using [LocalStack](https://docs.localstack.cloud/).
    - The folders follow the pattern `SERVICE-NUMBER-SHORT-TITLE`.
    - Solutions are in README format based on the name of the challenges (folders).
- [Kubernetes Drills](./minikube/README.md): using Minikube.

<br>

## Drills Structure

Not to gatekeep, but prioritize real cases based on your own experience. Things that have made you think "Wow, I'm glad I know how to do that!" or "If someone can figure this out, I'm hiring them!

- 🔎 **Problem/Request**: A thing that happened to you or a request from an user.
    - Context: Information that can help you understand the problem or request.
    - Hint: You may provide some clues to help the player solve the problem.
- 🧪 **Validation**: What does success look like? What command should we run to validate?
- 💉 **Solution**: Like to the solution file following the pattern `[Solution](../solutions/TYPE/SERVICE-NUMBER-TITLE.md)`
    - Common Mistakes:
    - Additional Resources: links to explain more behind the issue.

<br>

## The Curve Ball Approach

Performing Chaos Engineering in your company each time a new member starts on-call duties or begins the onboarding isn't feasible to test their abilities or wait for something to happen to help them grow.

This approach is a close second.

### 1️⃣ Limited Exposure

Once a project passes the implementation phase, you will get less experience because the scope will consist mainly of providing support or, at best, occasional new features.

Unless you actively try to dig and find answers about how and why someone designed the thing you support. You will probably miss most of the nitty-gritty details.


### 2️⃣ Knowledge Gaps

While your company might document past issues, reading static documentation about problem-free systems is hardly engaging or educational. These simulations serve as "live documentation," allowing you to learn by doing.

You shouldn't have to wait for something to break to realize that you have knowledge gaps. Stop it, get some help.

### 3️⃣ Interview Challenges

Sometimes, you haven't had the chance to work with a particular technology, but you have the skills to get up to speed—this is for you.

<br>

## Contributing

If you encounter issues or have suggestions, feel free to open an issue or submit a pull request. Your feedback is what makes this repository grow!


