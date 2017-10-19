# Bulk rename files using bash

If a bunch of files need to be renamed, this can speed up the process.

```bash
# Preview commands using echo first
for file in ./*.JPG; do echo mv "$file" "${file/\.JPG/\.jpg}"; done

# mv ./IMG_1106.JPG ./IMG_1106.JPG
# mv ./IMG_1107.JPG ./IMG_1107.JPG
# mv ./IMG_1108.JPG ./IMG_1108.JPG

# Perform the rename
for file in ./*.JPG; do mv "$file" "${file/\.JPG/\.jpg}"; done
```