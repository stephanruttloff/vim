# Vim Settings & Plugins

Das hier sind meine ganz persönlichen Vim Settings und Plugins.
Alles ist strikt an meinen Workflow und meine Gewohnheiten angepasst.

## Installation

### Windows

	cd [path-to-vim]
	git clone http://git.ruttloff.org/rudzn/vim.git
	git submodule init
	git submodule update
	git submodule foreach git pull origin master

Anschließend muss noch unter `C:\Benutzer\[Name]\` folgende Ordnerstruktur angelegt werden:

	.\.vim
	.\.vim\swap
	.\.vim\undo

### Linux

	cd ~
	git clone http://git.ruttloff.org/rudzn/vim.git vimrepo
	cd vimrepo
	git submodule init
	git submodule update
	git submodule foreach git pull origin master
	ls -l ~/vimrepo/_vimrc ~/.vimrc
	ls -l ~/vimrepo/vimfiles ~/.vim
