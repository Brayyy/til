# exiftool notes

### Move files into Make.Model directories, prefix filename with date+time
This is great for making sense of a directory of DiskDrill or Juicer findings
```bash
find . -type f -name "*.jpg" -depth 1 -exec exiftool '-directory<$Make.$Model' '-filename<${Exif:CreateDate} %f.%e' {} +
```

### Prefix all files with their dimensions
```bash
find . -type f -name "*.jpg" -depth 1 -exec exiftool '-filename<${imagesize}__%f.%e' {} +
```

### Change modified date to the original time in the EXIF
```bash
find . -type f -name "*.jpg" -depth 1 -exec exiftool "-filemodifydate<datetimeoriginal" {} +
```
