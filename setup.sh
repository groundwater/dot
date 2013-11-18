#!/bin/bash

DOT=.dot
DIR=$HOME/$DOT

# fetch or update dot repo
if [[ ! -d "$DIR" ]]; then
  # on initial setup, clone the repo
  git clone git@github.com:jacobgroundwater/dot.git $DIR
elif [[ "$1" = '-f' ]]; then
  # force update against server
  # we stash changes just in case you want them
  (cd $DIR && git fetch --all && git stash && git reset --hard origin/master)
else
  echo "Use -f to update from server"
fi

# link everything to $HOME as a dotfile
ls $DIR | while read f; do
  echo -n "--> Linking $DIR/$f -> ~/.$f: " 
  ln -sfn $DOT/$f $HOME/.$f &&\
    echo "OK"         ||\
    ecoh "FAIL"
done

echo "--> Updating Vundle"
vim +BundleInstall +qall

echo "--- Done"

