#!/bin/bash

repos="$HOME/repos/dotfiles"

if [[ ! -d $HOME/trash ]] ; then
	mkdir $HOME/trash
fi

for i in $repos/.* ; do
	if [[ $i != "$repos/.git" && $i != "$repos/." && $i != "$repos/.." && -e $HOME/$i ]] ; then
		mv $repos/$i $HOME/trash
	fi
	if [[ $i != "$repos/.git" && $i != "$repos/." && $i != "$repos/.." ]] ; then
		ln -s $i $HOME
	fi
done
