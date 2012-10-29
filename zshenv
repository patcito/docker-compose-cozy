#!/bin/zsh
# PATH initialisations
UNAME=`uname`
if test $UNAME = "Linux" ;
then
	PATH=$PATH:/usr/local/sbin:/usr/sbin:/sbin
elif test $UNAME = "Darwin" ;
then
	PATH=/opt/local/bin:/opt/local/sbin:$PATH
fi
export PATH
# TRASH initialisations
if test $UNAME = "Linux" ;
then
	TRASH=~/.local/share/Trash/files ;
elif test $UNAME = "Darwin" ;
then
	TRASH=~/.Trash ;
fi
export TRASH
export UNAME=`uname`
export LC_ALL=fr_FR.UTF-8
export EDITOR=/opt/local/bin/vim
export PAGER=/usr/bin/less
declare -x TEXINPUTS=.:$HOME/.texmf:
