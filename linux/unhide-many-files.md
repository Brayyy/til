# Unhide lots of . files

Loops over all files in a directory and renames things like ".dir" to "dir", but first configures glob (*) to ignore "." and "..".

```bash
GLOBIGNORE=".:.."
for file in .*; do
 mv -n "$file" "${file#.}"
done
```