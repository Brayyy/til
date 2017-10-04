# Get a server/instance physical memory

It can be helpful to get the physical memory when scripting out limits in configuration. This also takes into consideration Kilobytes (1000) vs Kibibytes (1024).

Note: /proc/meminfo lists things as kB (kilobyte), but it is really KiB (kibibyte) due to legacy support.

```bash
# Byte
# 16099667968
$ grep MemTotal /proc/meminfo | awk '{print $2}' | xargs -I {} echo "scale=4; {}*1024" | bc

# Kibibyte
# 15722332
$ grep MemTotal /proc/meminfo | awk '{print $2}'

# Mebibyte
# 15353.8398
$ grep MemTotal /proc/meminfo | awk '{print $2}' | xargs -I {} echo "scale=4; {}/1024" | bc

# Gibibyte
# 14.9939
$ grep MemTotal /proc/meminfo | awk '{print $2}' | xargs -I {} echo "scale=4; {}/1024^2" | bc