#!/bin/bash
echo "Enter the Economist issue number:"
read issue
echo "Enter the Economist issue date (YYYYMMDD format):"
read date
FILES=~/Downloads/Issue_$issue*/*
DIRECTORY="/Users/$USER/Downloads/Issue $issue - $date/"
mkdir "$DIRECTORY"
echo $DIRECTORY
for f in $FILES
do
  echo `basename "$f"`
  cp -v "$f" "$DIRECTORY"
done
