# TIL

> Today I Learned

---

### Categories

* [Git](#git)
* [Linux](#linux)


### Git
 - [Amend / replace author on old commits](git/amend-old-author.md)
 - [Change tab width when doing git diff](git/change-tab-width.md)
 - [Delete remote branch](git/delete-remote-branch.md)
 - [Display a pretty Git commit tree](git/pretty-commit-tree.md)
 - [Pull newest changes, replacing local files](git/pull-new-and-replace.md)

### Linux
 - [Append crontab row](linux/append-crontab.md)
 - [Change date of a file](linux/change-file-date.md)
 - [File manipulation using sed](linux/file-manipulation-using-sed.md)
 - [Find files by size](linux/find-by-size.md)
 - [Find largest X in path](linux/find-largest-stuff.md)
 - [Show external IP](linux/get-public-ip.md)
 - [Create gzip files of each subdirectory](linux/gzip-directories.md)
 - [Kill processes matching a string](linux/kill-by-string-match.md)
 - [Unhide lots of . files](linux/unhide-many-files.md)


## Menu build script
```bash
for d in `find . -type d -d 1 ! -path "./.git"`;
do
  GR=$(echo $d | sed 's/.\///g')
  GR="$(tr '[:lower:]' '[:upper:]' <<< ${GR:0:1})${GR:1}"
  echo \#\#\# $GR
  for f in $d/*.md;
  do
    f=$(echo $f | sed 's/.\///')
    echo " - [`head -n 1 $f | sed 's/# //g'`]($f)";
  done
  echo
done
```

## About

I shamelessly stole this idea from [jbranchaud/til](https://github.com/jbranchaud/til), who shamelessly stole it from [thoughtbot/til](https://github.com/thoughtbot/til).

## License

&copy; 2015-2016 Bray Almini

This repository is licensed under the MIT license. See `LICENSE` for details.