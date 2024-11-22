# MacOS Development Environment Setup

This guide will help you set up your MacOS development environment with essential tools.

## Prerequisites

- MacOS 10.15 or later
- Administrator access to your machine

## Installation Steps

### 1. Install Xcode Command Line Tools

```bash
xcode-select --install
```
### 2. Install Homebrew

```bash
/bin/bash -c "$$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
```

Add Homebrew to your PATH:
```bash
echo 'eval "$(/opt/homebrew/bin/brew shellenv)"' >> ~/.zshrc
source ~/.zshrc
```


### 3. Install Docker Desktop

1. Download Docker Desktop for Mac from [Docker's official website](https://www.docker.com/products/docker-desktop)
2. Install the downloaded .dmg file
3. Launch Docker Desktop and complete the setup

### 4. Install Required Tools

```bash
# Install AWS CLI
brew install awscli

Install other essential tools
brew install jq
brew install curl
```

### 5. Verify Installation

Run the following command to verify all required tools are installed:

```bash
make check-requirements
```


## Required Tools

- Docker Desktop
- AWS CLI
- curl
- jq

## Troubleshooting

### Common Issues

1. **Homebrew Installation Fails**
   - Ensure you have the latest Xcode Command Line Tools
   - Try running: `xcode-select --install`

2. **Docker Desktop Issues**
   - Ensure your Mac meets the system requirements
   - For Apple Silicon Macs, ensure you're using the ARM64 version

3. **AWS CLI Configuration**
   After installation, configure AWS CLI:
   ```bash
   aws configure
   ```

### Getting Help

If you encounter any issues:
1. Check the tool's documentation
2. Run `brew doctor` for Homebrew-related issues
3. Contact your team's technical support

## Maintenance

Keep your tools updated:
```bash
# Update Homebrew and all installed packages
brew update && brew upgrade
# Update Docker Desktop
# This can be done through the Docker Desktop application
```

## Additional Resources

- [Homebrew Documentation](https://docs.brew.sh)
- [Docker Desktop Documentation](https://docs.docker.com/desktop/mac/)
- [AWS CLI Documentation](https://aws.amazon.com/cli/)
