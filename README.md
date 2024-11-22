# Local Drills

This repository aims to provide a collection of near real-world cloud environment simulations to troubleshoot issues that you can run locally, so no worries of costs or getting things up-and-running.

This has three goals:

1. Give the chance to learn from others by tackling challenges you haven’t encountered yet.
2. Help you understand what you don't know.
3. Double as interview challenges.

Online course labs will rarely throw curveballs your way, so you are welcome!

More about this at the [Curve Ball](#the-curve-ball) section.

## Solutions

Our main objective is to provide everything you need to simulate environments like **AWS** (using [LocalStack](https://docs.localstack.cloud/)) and **EKS** (using Minikube)

- [AWS Drills](./localstack/README.md)
- [Kubernetes Drills](./minikube/README.md)

## Drill Structure

Not to gatekeep, but prioritize real cases based on your own experience. Things that have made you think "Wow, I'm glad I know how to do that!" or "If someone can figure this out, I'm hiring them!

- Problem/Request: A thing that happened to you or a request from an user.
    - Context: Information that can help you understand the problem or request.
    - Hint: You may provide some clues to help the player solve the problem.
- Validation: What does success look like? What command should we run to validate?
- Solution: Like to the solution file following the pattern `[Solution](../solutions/TYPE/SERVICE-NUMBER-TITLE.md)`


## The Curve Ball

### Limited Exposure

Once a project passes the implementation phase, you will get less experience because the scope will consist mainly of providing support or, at best, occasional new features.

Unless you actively try to dig and find answers about how and why someone designed the thing you support. You will probably miss most of the nitty-gritty details.


### Knowledge Gaps

While your company might document past issues, reading static documentation about problem-free systems is hardly engaging or educational. These simulations serve as "live documentation," allowing you to learn by doing.

You shouldn't have to wait for something to break to realize that you have knowledge gaps. Stop it, get some help.

### Interview Challenges

Sometimes, you haven't had the chance to work with a particular technology, but you have the skills to get up to speed—this is for you.


## Feedback and Support

If you encounter issues or have suggestions, feel free to open an issue or submit a pull request. Your feedback is what makes this repository grow!

### Contributors!

