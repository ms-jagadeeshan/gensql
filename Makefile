
PREFIX="/usr/local"
# sed "s/^PREFIX=.*/PREFIX=\"$PREFIX\"/" | head


install:
	@echo "Installing gensql..."
	sudo mkdir -p ${PREFIX}/bin
	sudo cp -v gensql ${PREFIX}/bin/gensql
	sudo chmod 755 ${PREFIX}/bin/gensql
	sudo mkdir -p ${PREFIX}/share/gensql/db
	sudo cp -v db/* ${PREFIX}/share/gensql/db/
	sudo chmod 644 ${PREFIX}/share/gensql/db/*
	@echo "Done..."
uninstall:
	@echo "Uninstalling gensql..."
	sudo rm -v ${PREFIX}/bin/gensql
	sudo rm -rv ${PREFIX}/share/gensql/db
	@echo "Done..."
reinstall: uninstall install

.PHONY = install uninstall reinstall
