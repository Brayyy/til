# Sorted file diff

If comparing files where the lines are out of order, this can make them easier to read.

```bash
# Diffing directly yields hard to read results
$ diff text1.txt text2.txt -y
thing-5  |  thing-2
thing-1     thing-1
thing-3  <
thing-4     thing-4
thing-2  |  thing-0
thing-6  |  thing-3

# This makes much more sense to read!
$ diff <(sort text1.txt) <(sort text2.txt) -y
         >  thing-0
thing-1     thing-1
thing-2     thing-2
thing-3     thing-3
thing-4     thing-4
thing-5  <
thing-6  <
```

Source:

https://stackoverflow.com/questions/714421/what-is-an-easy-way-to-do-a-sorted-diff-between-two-files
