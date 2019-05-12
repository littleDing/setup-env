

.PHONY: all $(SUBDIRS)

all : python vim bash
	
vim : vim/vimrc
	cp -f vim/vimrc ~/.vimrc
bash : bash/bashrc
	cp -f bash/bashrc ~/.bashrc
python : python/makefile
	$(MAKE) -C $@
	
