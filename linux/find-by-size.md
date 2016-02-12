# Find files by size

Delete all *.txt files in the given directory which are less than 80Kb

```bash
$ find . -name "*.txt" -size -80k -delete
```

List all *.txt files in the given directory which are larger than 80Kb

```bash
$ find . -name "*.txt" -size +80k -exec ls -l {} +
```

