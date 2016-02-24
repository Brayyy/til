# Create gzip files of each subdirectory

```bash
$ for i in *; do tar -czf $i.tgz $i; done
```
