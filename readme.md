# Vim Settings & Plugins

Das hier sind meine ganz pers�nlichen Vim Settings und Plugins.
Alles ist strikt an meinen Workflow und meine Gewohnheiten angepasst.

## Installation

### Windows

Unter Windows sind folgende Kommandos auszuf�hren:

	cd [path-to-vim]
	git clone http://git.ruttloff.org/rudzn/vim.git
	git submodule foreach git pull origin master
	git submodule init
	git submodule update

Anschlie�end muss noch unter `C:\Benutzer\[Name]\` folgende Ordnerstruktur angelegt werden:

	.\.vim
	.\.vim\swap
	.\.vim\undo

**---Ab Vim 7.4 nicht mehr n�tig---**

Um Dateien in Vim direkt �ber das Kontextmen� des Explorers zu �ffnen muss folgender Eintrag in der Registry vorgenommen werden:

	Windows Registry Editor Version 5.00

	[HKEY_CLASSES_ROOT\*\shell\Edit with Vim]

	[HKEY_CLASSES_ROOT\*\shell\Edit with Vim\command]
	@="C:\\Program Files (x86)\\Vim\\vim73\\gvim.exe \"%1\""

Sollen neue Dateien nicht in einem neuen Fenster, sondern in einem neuen Tabim bestehenden Vim Fenster angezeigt werden, muss die letzte Zeile durch folgende ersetzt werden:

	@="C:\\Program Files (x86)\\Vim\\vim73\\gvim.exe --remote-tab-silent \"%1\""

Danach sollte der Eintrag "Edit with Vim" im Kontextmen� erscheinen.

### Linux

Unter Linux sind folgende Kommandos auszuf�hren:

	cd ~
	git clone http://git.ruttloff.org/rudzn/vim.git vimrepo
	cd vimrepo
	git submodule foreach git pull origin master
	git submodule init
	git submodule update
	ln -s ~/vimrepo/_vimrc ~/.vimrc
	ln -s ~/vimrepo/vimfiles ~/.vim
	mkdir ~/.vim/swap
	mkdir ~/.vim/undo

Um den Shortcut CTRL + S (speichern) zu verwenden, muss folgendes zur .bashrc hinzugef�gt werden:

	stty ixany
	stty ixoff -ixon
	stty stop undef
	stty start undef

Hintergrund: CRTL + S sendet XOFF, wodurch das Terminal nicht mehr aktualisiert wird. Die obigen Eintr�ge verhindern das.
