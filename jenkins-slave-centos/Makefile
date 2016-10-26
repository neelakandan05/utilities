#
#This file was generated from Makefile.in on Wed Oct 19 19:13:28 UTC 2016
#

RM        = rm -f
VERSION   = 1.8.12
INSTALL   = /usr/local
INSTTOOL  = /usr/bin/install
DOXYDOCS  = ..

export TMAKEPATH
install:
	$(INSTTOOL) -d $(INSTALL)/bin
	$(INSTTOOL) -d $(INSTALL)/doc/doxygen
	$(INSTTOOL) -m 755 bin/doxygen    $(INSTALL)/bin
	cp -r html $(INSTALL)/doc/doxygen
