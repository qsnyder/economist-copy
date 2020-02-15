#echo "Enter the Economist issue number:"
#read issue
#echo "Enter the Economist issue date (YYYYMMDD format):"
#read date
vars=$1
issue=$(echo $1 | cut -d' ' -f1)
date=$(echo $1 | cut -d' ' -f2)
FILES=~/Downloads/Issue_$issue*/*
#DIRECTORY="/Users/$USER/Downloads/Issue $issue - $date/"
DIRECTORY="/Volumes/ECONOMIST/Issue $issue - $date/"
mkdir "$DIRECTORY"
echo $DIRECTORY
for f in $FILES
do
  echo `basename "$f"`
  touch -mt $(date '+%Y%m%d%H%M.%S') "$f"
  cp -v "$f" "$DIRECTORY"
done