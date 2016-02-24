#!/usr/local/bin/bash

# A carriage return
CR=$'\n'

CATEGORIES="### Categories$CR";
ITEMS='';

# Directories with spaces would have been broken up in to two items, this fixes that.
SAVEIFS=$IFS
IFS=$(echo -en "\n\b")

# For each directory, excluding .git
for d in `find . -type d -d 1 ! -path "./.git"`;
do
  # Strip off ./ from directory string
  dirNoSlash=$(echo $d | sed 's/.\///g')
  # Make category anchors
  dirLowerWithDashes=$(echo $dirNoSlash | tr '[:upper:]' '[:lower:]' | tr ' ' '-')

  # Add directory/category to categories
  CATEGORIES="$CATEGORIES$CR* [$dirNoSlash](#$dirLowerWithDashes)";
  # Add category header for directory
  ITEMS="$ITEMS$CR### $dirNoSlash";

  # Test if there are .md files in directory
  if [ $(ls -l $d/*.md 2>/dev/null | wc -l) -gt 0 ];
  then 
    # For each .md file in directory
    for f in $d/*.md;
    do
      # Strip off ./ from filename string
      f=$(echo $f | sed 's/.\///')
      # Add file to item list under header
      ITEMS="$ITEMS$CR - [`head -n 1 $f | sed 's/# //g'`]($f)";
    done
  fi

  # Add spacing between categories
  ITEMS="$ITEMS$CR";
done

echo "$CATEGORIES";
echo;
echo "$ITEMS";