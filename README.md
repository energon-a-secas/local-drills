# Local Drills

> "Unless you experience challenges firsthand, you won’t truly grow."

This repository is for those who want to simulate real-world cloud environments on their local machine, whether for learning, testing, or experimentation. If your work environment is too stable or standardized to offer unique challenges, this is your chance to step out of the comfort zone, connect the dots, and sharpen your problem-solving skills.

Our main objective is to provide everything you need to simulate environments like **AWS** (using [LocalStack](https://docs.localstack.cloud/)) and **EKS** (using Minikube)



## Limitations
Before diving in, here are a few limitations to keep in mind:

- LocalStack:
  - Community Image:
    - This is the image you'll use unless you have a paid license (starting at $35 USD per user).
    - Not all AWS services are available in the Community tier, but the most common ones are.
  - IAM Restrictions:
    - In the Community tier, IAM policies are simplified, meaning all resources can access everything. This can affect how you test permissions.


## Setup

### Local Stack

- [awscli-local](https://github.com/localstack/awscli-local): will allow you to run AWS commands in the local environment as `awslocal` instead of the `aws`. This has the advantage of not requiring you to do credential setup for the local AWS.
- [Quick Start](https://docs.localstack.cloud/getting-started/quickstart/):
  - MacOS: `brew install localstack/tap/localstack-cli`
- Suggested:
  - [Docker Extension](https://docs.localstack.cloud/user-guide/tools/localstack-docker-extension/): helps the view from the 



### Minikube Setup

Eventually if we get help.


## Feedback and Support

If you encounter issues or have suggestions, feel free to open an issue or submit a pull request. Your feedback is what makes this repository grow!

