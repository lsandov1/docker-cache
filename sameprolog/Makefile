all: vim emacs
vim emacs:
	echo Building $@ $(time)
	m4 -I templates dockerfile.$@.m4 | tee | docker build -
	echo Finished $@ $(time)

