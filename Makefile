help:
	@echo "Usage: make [install | emacs | git | bash | zsh | tongue | tmux | screen]"

install: emacs git bash zsh tongue tmux screen

emacs: emacs.el
	cp emacs.el ~/.emacs.el

git: gitconfig gitignore
	ln -s -f `pwd`/gitconfig ~/.gitconfig && ln -s -f `pwd`gitignore ~/.gitignore

bash: bashrc_horie
	ln -s -f `pwd`/bashrc_horie ~/.bashrc_horie

zsh: zshrc_horie
	cp zshrc_horie ~/.zshrc_horie

tongue: tonguerc
	cp tonguerc ~/.tonguerc

#vim: vimrc
#	cp vimrc ~/.vimrc

tmux: tmux.conf
	cp tmux.conf ~/.tmux.conf

screen: screenrc
	ln -s -f `pwd`/screenrc ~/.screenrc
