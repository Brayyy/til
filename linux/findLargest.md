# Find largest X in path

Find the largest 50 files

```bash
$ find . -type f -print0 2>/dev/null | xargs -0 du -s | sort -n | tail -50 | cut -f2 | xargs -I{} du -sh {}
```

Find the largest 50 directories

```bash
$ find . -type d -xdev -print0 2>/dev/null | xargs -0 du -s 2>/dev/null | sort -n | tail -30 | cut -f2 | xargs -I{} du -sh {} 2>/dev/null
```
