# File manipulation using sed

Replace text in a file in-place.

```bash
$ sed -i 's/oldWord/newWord/g' *.txt
```

Remove the last line of a file
```bash
$ sed '$d’ file.txt
```

Remove the 3rd line of a file
```bash
$ sed '3d' file.txt
```

Strip all lines that start with hash / # from a file
```bash
$ sed -i '/^#/d' file.txt
```

Remove lines containing the string "blah":
```bash
$ sed '/blah/d' file.txt
```

Remove lines not containing the string "blah":
```bash
$ sed -n '/blah/p' file.txt
```
