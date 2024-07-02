# Saving config
1. Setup environment
```
git init --bare $HOME/.config/nvim
alias config='/usr/bin/git --git-dir=$HOME/.config/nvim/ --work-tree=$HOME'
config config --local status.showUntrackedFiles no
echo "alias config='/usr/bin/git --git-dir=$HOME/.config/nvim/ --work-tree=$HOME'" >> $HOME/.zshrc
```
2. Start commiting
```
config status
config add .bashrc
config commit -m "Add bashrc"
config push
```

# Applying config
1. Setup environment
```
alias config='/usr/bin/git --git-dir=$HOME/.config/nvim/ --work-tree=$HOME'
echo "alias config='/usr/bin/git --git-dir=$HOME/.config/nvim/ --work-tree=$HOME'" >> $HOME/.zshrc
echo ".config/nvim" >> .gitignore
```
2. Start cloning repo
```
git clone --bare <git-repo-url> $HOME/.config/nvim
config checkout
```
# References
- https://www.atlassian.com/git/tutorials/dotfiles
