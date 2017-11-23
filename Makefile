none: 

install: emacs git bash zsh tongue tmux screen

emacs: emacs.el
	cp emacs.el ~/.emacs.el

git: gitconfig gitignore
	cp gitconfig ~/.gitconfig && cp gitignore ~/.gitignore

bash: bashrc_horie
	cp bashrc_horie ~/.bashrc_horie

zsh: zshrc_horie
	cp zshrc_horie ~/.zshrc_horie

tongue: tonguerc
	cp tonguerc ~/.tonguerc

#vim: vimrc
#	cp vimrc ~/.vimrc

tmux: tmux.conf
	cp tmux.conf ~/.tmux.conf

screen: screenrc
	cp screenrc ~/.screenrc
