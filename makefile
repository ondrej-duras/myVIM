#
# MAKEFILE of HPSA-Utilities project
# 20160501, Ing. Ondrej DURAS, kpt. v zal.
# ~/prog/HPSA-Utilities/makefile
# VERSION=2016.090101
#

PROJECT=myVIM-Config
PLATFORM=$(shell perl -e "print $$^O;")
TIMESTAMPL=$(shell perl -e "use POSIX; print(strftime(\"%Y%m%d-%H%M%S\",gmtime(time)));")
TIMESTAMPW=$(shell perl -e "use POSIX; print(strftime('%%Y%%m%%d-%%H%%M%%S',gmtime(time)));")

help:
	@echo "self      - makes a copy of project into bin/"
	@echo "hpsatool  - makes a copy of project into VPC-helper ... non standard !"
	@echo "push      - uploads all script onto LAB+IDA"
#	@echo "lab-ljump - uploads all script onto LAB PLN-N2-LJUMP"
#	@echo "lab-push  - uploads all script onto LAB PLN-N2-HPSATOOL"
#	@echo "ida-push  - uploads all script onto IDA"



self:
	-@make self-${PLATFORM}

self-MSWin32:
	@copy /Y vimrc-win.vim       c:\usr\vim\_vimrc


self-linux:
	@cp vim-lnx.vim                   ${HOME}/.ssh/vimrc-lnx.vim
	@ln -s ${HOME}/.ssh/vimrc-lnx.vim ${HOME}/.vimrc
	@chmod -v 600 ${HOME}/.ssh/vimrc-lnx.vim

push:
	@echo "Not implemented yet."

pull:
	@echo "Not implemented yet."
		


backup:
	-@make backup-${PLATFORM}

backup-MSWin32:
	@echo ${TIMESTAMPW}
	@7z a     ..\${PROJECT}-${TIMESTAMPW}.7z *
	@dir      ..\${PROJECT}-${TIMESTAMPW}.7z

backup-linux:
	@echo ${TIMESTAMPL}
	tar -jcvf ../${PROJECT}-${TIMESTAMPL}.tar.bz2 ./
	ls -l     ../${PROJECT}-${TIMESTAMPL}.tar.bz2 ./



mybackup:
	@make mybackup-${PLATFORM}

mybackup-MSWin32:
	@echo ${TIMESTAMPW}
	@7z a       c:\usr\archive\${PROJECT}-${TIMESTAMPW}.7z *
	@md5sum     c:\usr\archive\${PROJECT}-${TIMESTAMPW}.7z
	@sha1sum    c:\usr\archive\${PROJECT}-${TIMESTAMPW}.7z 
	@dir        c:\usr\archive\${PROJECT}-${TIMESTAMPW}.7z 

mybackup-linux:
	@echo ${TIMESTAMPL}
	@tar -jcvf ${HOME}/archive/${PROJECT}-${TIMESTAMPL}.tar.bz2 ./
	@md5sum    ${HOME}/archive/${PROJECT}-${TIMESTAMPL}.tar.bz2 
	@sha1sum   ${HOME}/archive/${PROJECT}-${TIMESTAMPL}.tar.bz2 
	@ls -l     ${HOME}/archive/${PROJECT}-${TIMESTAMPL}.tar.bz2 


# --- end ---

