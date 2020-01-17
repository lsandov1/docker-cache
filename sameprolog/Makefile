.PHONY = vim emacs cleanup
all: editors

editors: vim

vim: emacs
	@printf "Building $@ \n\n"
	m4 -I templates dockerfile.$@.m4 | tee Dockerfile.$@ | docker build -t sameprolog-$@ -
	@printf "Finished $@ \n\n"

emacs: cleanup
	@printf "Building $@ \n\n"
	m4 -I templates dockerfile.$@.m4 | tee Dockerfile.$@ | docker build -t sameprolog-$@ -
	@printf "Finished $@ \n\n"

cleanup:
	docker rmi sameprolog-vim | true
	docker rmi sameprolog-emacs | true
