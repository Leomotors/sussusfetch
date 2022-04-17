build:
	gcc susfetch.c lib/playAudio.c -o sussusfetch -O3 -std=gnu17 -lmpg123 -lao

install:
	mkdir -p $${HOME}/.sussusfetch
	cp ./assets/AMOGUS.mp3 $${HOME}/.sussusfetch
	cp ./sussusfetch $${HOME}/.local/bin
	echo "\033[0;32mInstall Success\033[0;0m"

uninstall:
	rm -rf $${HOME}/.sussusfetch
	rm -f $${HOME}/.local/bin/sussusfetch
	echo "\033[0;32mUninstall Success\033[0;0m"
