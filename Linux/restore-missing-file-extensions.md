# Bulk restore missing file extensions

Sometimes when doing some backup recovery tasks, I'm left with a big folder of files lacking file extensions. This bash function will rip through the list, adding the correct extension, and filing it into a directory of that file type. It is safe to re-run as needed when adding new mime-type mapping.

```bash
find . -type f -d 1 | while read FILE; do
  mime=$(file --mime-type -b "$FILE")
  ext=""
  case "$mime" in
    "image/jpeg") ext="jpg";;
    "image/jp2") ext="jp2";;
    "image/png") ext="png";;
    "image/gif") ext="gif";;
    "image/tiff") ext="tiff";;
    "image/application/xml") ext="xml";;
    "video/mp4") ext="mp4";;
    "audio/x-m4a") ext="m4a";;
    "video/quicktime") ext="mov";;
    "audio/x-wav") ext="wav";;
    "text/plain") ext="txt";;
    "text/html") ext="htm";;
    "application/pdf") ext="pdf";;
    "text/vcard") ext="vcf";;
    "application/zip") ext="zip";;
    "application/octet-stream") ext="binary";;
    "application/msword") ext="doc";;
    "application/x-gzip") ext="gz";;
    "application/vnd.ms-powerpoint") ext="ppt";;
    "image/x-icon") ext="ico";;
    "audio/ogg") ext="ogg";;
    *) echo "Unknown $mime $FILE";;
  esac
  if [ "$ext" != "" ]; then
    if [ ! -d ./$ext ]; then
      mkdir ./$ext
    fi
    mv "$FILE" ./$ext/"$FILE"."$ext"
  fi
done
```
