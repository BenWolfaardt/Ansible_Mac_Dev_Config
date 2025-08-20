#!/bin/sh
set -e  # Exit on any error

echo "🚀 Starting bootstrap process..."

# Install Xcode command line tools
echo "📦 Installing Xcode command line tools..."
xcode-select --install 2>/dev/null || echo "Xcode tools already installed"
sudo xcodebuild -license accept 2>/dev/null || echo "License already accepted"

# Install UV directly from the official installer
echo "🔧 Installing UV Python package manager..."
curl -LsSf https://astral.sh/uv/install.sh | sh

# Add UV to PATH for this session
export PATH="$HOME/.local/bin:$PATH"

# Install Python using UV
echo "🐍 Installing Python 3.12 via UV..."
uv python install 3.12

# Install Ansible using UV
echo "📚 Installing Ansible via UV..."
uv tool install ansible

# Update PATH to include UV tools directory
export PATH="$HOME/.local/bin:$PATH"

# Verify installations
echo "✅ Verifying installations..."
uv --version

uv tool run --from ansible-core ansible --version

# Install Ansible requirements
echo "📋 Installing Ansible Galaxy requirements..."
uv tool run --from ansible-core ansible-galaxy install -r requirements.yml

# Run the Ansible playbook
echo "🎯 Running Ansible playbook..."
uv tool run --from ansible-core ansible-playbook -i "localhost," -c local main.yml --ask-become-pass

echo "🎉 Bootstrap complete! All tools installed via UV."
echo "💡 Restart your terminal or run 'source ~/.zshrc' to use the new tools."
