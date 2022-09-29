#!/usr/bin/env zsh

# A carriage return
CR=$'\n'

CATEGORIES="### Categories$CR";
ITEMS='';

# Directories with spaces would have been broken up in to two items, this fixes that.
SAVEIFS=$IFS
IFS=$(echo -en "\n\b")

# For each directory, excluding .git
for d in `find . -type d -d 1 ! -path "./.git" | sort`;
do
  # Strip off ./ from directory string
  category=$(echo $d | sed 's/.\///g'| tr '_' ' ')
  
  # Make category anchors
  dirLowerWithDashes=$(echo $category | tr '[:upper:]' '[:lower:]' | tr ' ' '-')

  # Add directory/category to categories
  CATEGORIES="$CATEGORIES$CR* [$category](#$dirLowerWithDashes)";
  # Add category header for directory
  ITEMS="$ITEMS$CR### $category";

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

cat <<EOF
# Today I Learned / Cheat sheet

$CATEGORIES

$ITEMS

## Menu build script

To quickly create the table of contents based on the .md files found, run ./make_toc.sh

## About

I shamelessly stole this idea from [jbranchaud/til](https://github.com/jbranchaud/til), who shamelessly stole it from [thoughtbot/til](https://github.com/thoughtbot/til).

## License

&copy; 2015-$(date +%Y) Bray Almini

This repository is licensed under the MIT license. See \`LICENSE\` for details.
EOF
