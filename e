#!/bin/bash

DOT=~/.dot

(cd $DOT && git diff HEAD origin/master --exit-code) ||\
(
  echo "You did not push your last changes"
  echo "Push Now?"
  read f
  cd $DOT
  git push origin master || exit 1 
  echo "Pushed [continue?]"
  read f
) || exit 1

vim $DOT &&\
(
  sleep 1
  echo "Update Git?"

  read f 
  cd $DOT
  git add -u
  git add .
  git commit -m "Update on $(hostname)"
)
