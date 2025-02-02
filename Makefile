build:
	gcc susfetch.c lib/playAudio.c -o sussusfetch -O3 -std=gnu17 -lmpg123 -lao -Wall -Wextra

install:
	mkdir -p $${HOME}/.sussusfetch
	cp ./assets/AMOGUS.mp3 $${HOME}/.sussusfetch
	cp ./sussusfetch $${HOME}/.local/bin
	ln -s $${HOME}/.local/bin/sussusfetch $${HOME}/.local/bin/ssfetch
	echo "\033[0;32mInstall Success\033[0;0m"

uninstall:
	rm -rf $${HOME}/.sussusfetch
	rm -f $${HOME}/.local/bin/sussusfetch
	rm -f $${HOME}/.local/bin/ssfetch
	echo "\033[0;32mUninstall Success\033[0;0m"
