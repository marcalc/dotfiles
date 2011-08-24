#ln -s $HOME/dotfiles/.gitignore $HOME/.gitignore
ln -s ~/.bin/dotfiles/ssh/config ~/.ssh/config
ln -s ~/.bin/dotfiles/bashrc ~/.bashrc
ln -s ~/.bin/dotfiles/bashrc ~/.bash_profile
ln -s ~/.bin/dotfiles/git-external-chdiff ~/bin/git-external-chdiff

git config --global user.name "Marcos Alcantara"
git config --global user.email "marcos.alcantara@medscale.com.br"
git config --global color.status "auto"
git config --global color.branch "auto"
git config --global color.ui "auto"
git config --global core.editor "mate -w"
git config --global alias.oneline "log --pretty=oneline --graph --all"
git config --global alias.co "checkout"
git config --global alias.ci "commit"
git config --global alias.br "branch"
git config --global alias.la "log --pretty=\"format:%ad %h (%an): %s\" --date=short --graph --all"
git config --global diff.external git-external-chdiff
git config --global merge.tool chdiff
git config --global mergetool.chdiff.cmd "/usr/bin/env chdiff --wait \"\$LOCAL" \"\$REMOTE\"
git config --global mergetool.chdiff.keepBackup false
git config --global mergetool.chdiff.forceExitCode false
#git config --global core.excludesfile "~/.gitignore"

