# Exclude something from Dropbox

```bash
# Ignore from Dropbox
xattr -w com.dropbox.ignored 1 filename/folder

# Revert
attr -r com.dropbox.ignored filename/folder
```
