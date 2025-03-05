#!/bin/sh
xcode-select --install
sudo xcodebuild -license

# Install brew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# Install pipx
brew install pipx
pipx ensurepath
# Optional: Run with sudo for global pipx path modification (if necessary)
# sudo pipx ensurepath --global # optional to allow pipx actions with --global argument

# Install Ansible
pipx install --include-deps ansible

# Update the PATH by sourcing .zshrc
source ~/.zshrc

# Run the Ansible playbook
ansible-galaxy install -r requirements.yml
ansible-playbook -i "localhost," -c local main.yml --ask-become-pass
