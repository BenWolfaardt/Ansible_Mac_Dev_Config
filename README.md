# Ansbile config for my Mac Dev devices

## TODO

- [ ] Create config
- [ ] Update README.md
- [ ] Add orb stack
- [ ] Check desktopo casks and formula

## Insperation taken from

- https://github.com/TalkingQuickly/ansible-osx-setup
  - Accompanying blog: https://www.talkingquickly.co.uk/2021/01/macos-setup-with-ansible/
  - /bin/bootsrap stuff from here
- https://github.com/gperdomor/macOS-ansible
- https://github.com/ideasonpurpose/ansible-playbooks
- https://github.com/geerlingguy/ansible-role-dotfiles

## Random

- A bunch of MacOS settings: https://github.com/joshukraine/mac-bootstrap/blob/master/install/macos-defaults
  - https://github.com/joshukraine/mac-bootstrap#some-of-my-favorite-dotfile-repos
- Re-enable virtualisation for docker after hackintosh setup
- Potential CI: https://github.com/gperdomor/macOS-ansible/tree/main/.github/workflows


- One admin account and not the default one? 

==> Caveats
==> pipx
zsh completions have been installed to:
  /opt/homebrew/share/zsh/site-functions
Success! Added /Users/ben/.local/bin to the PATH environment variable.

Consider adding shell completions for pipx. Run 'pipx completions' for instructions.

You will need to open a new terminal or re-login for the PATH changes to take effect. Alternatively, you can source
your shell's config file with e.g. 'source ~/.bashrc'.

Otherwise pipx is ready to go! ✨ 🌟 ✨

---

xcode-select: error: tool 'xcodebuild' requires Xcode, but active developer directory '/Library/Developer/CommandLineTools' is a command line tools instance

---

⚠️  Note: '/Users/ben/.local/bin' is not on your PATH environment variable. These apps will not be globally
    accessible until your PATH is updated. Run `pipx ensurepath` to automatically add it, or manually modify your
    PATH in your shell's config file (e.g. ~/.bashrc).

--- 

add to .zshr

# Created by `pipx` on 2025-01-18 18:19:24
export PATH="$PATH:/Users/ben/.local/bin"

---

sort out dotfiles

echo >> /Users/ben/.zprofile
echo 'eval "$(/opt/homebrew/bin/brew shellenv)"' >> /Users/ben/.zprofile
eval "$(/opt/homebrew/bin/brew shellenv)"

---

Install MS TODO from the app store

---
