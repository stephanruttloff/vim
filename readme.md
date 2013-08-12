Vim Settings
============

Windows
-------

Einfach in das Vim Directory (...Program Files\Vim) clonen und fertig.

Linux
-----

Eigenen Ordner im Home anlegen, hinein clonen und symlinks setzen.

- _vimrc nach ~/.vimrc verlinken
- vimfiles nach ~/.vim verlinken

Plugins
-------

Die Plugins sind als Git Submodules eingebunden.

PLugins Updaten:

	git submodule init
	git submodule update
	git submodule foreach git pull origin master
