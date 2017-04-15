# Keep it simple for now...
all:
	mkdir -p ~/bin
	rm ~/.bashrc && ln -s $(PWD)/bashrc ~/.bashrc
	[ -f ~/.vimrc ] || ln -s $(PWD)/vimrc ~/.vimrc
	[ -f ~/.config/nvim/init.vim ] || ln -s $(PWD)/vimrc ~/.config/nvim/init.vim
	[ -f ~/.git-prompt.sh ] || ln -s $(PWD)/git-prompt.sh ~/.git-prompt.sh
	[ -f ~/bin/.git-completion.bash ] || ln -s $(PWD)/git-completion.bash ~/bin/git-completion.bash
	[ -f ~/.tmuxrc ] || ln -s $(PWD)/git-prompt.sh ~/.tmuxrc


clean:
	[ -f ~/.vimrc ] || rm ~/.vimrc 

.PHONY: all
