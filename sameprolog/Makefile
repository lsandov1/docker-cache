.PHONY = vim emacs cleanup
all: editors

editors: vim

vim: emacs
	echo Building $@ $(time)
	m4 -I templates dockerfile.$@.m4 | tee Dockerfile.$@ | docker build -t sameprolog-$@ -
	echo Finished $@ $(time)

emacs: cleanup
	echo Building $@ $(time)
	m4 -I templates dockerfile.$@.m4 | tee Dockerfile.$@ | docker build -t sameprolog-$@ -
	echo Finished $@ $(time)

cleanup:
	docker rmi sameprolog-vim | true
	docker rmi sameprolog-emacs | true
