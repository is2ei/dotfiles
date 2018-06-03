help:
	@echo "Usage: make [install | emacs | git | bash | zsh | yash | tongue | tmux | screen]"

install: emacs git bash zsh yash tongue tmux screen

emacs: emacs.el
	ln -s -f `pwd`/emacs.el ~/.emacs.el

git: gitconfig gitignore
	ln -s -f `pwd`/gitconfig ~/.gitconfig && ln -s -f `pwd`/gitignore ~/.gitignore

bash: bashrc_horie
	ln -s -f `pwd`/bashrc_horie ~/.bashrc_horie

zsh: zshrc_horie
	ln -s -f `pwd`/zshrc_horie ~/.zshrc_horie

yash: yashrc_horie
	ln -s -f `pwd`/yashrc_horie ~/.yashrc_horie

tongue: tonguerc
	ln -s -f `pwd`/tonguerc ~/.tonguerc

#vim: vimrc
#	cp vimrc ~/.vimrc

tmux: tmux.conf
	ln -s -f `pwd`/tmux.conf ~/.tmux.conf

screen: screenrc
	ln -s -f `pwd`/screenrc ~/.screenrc
