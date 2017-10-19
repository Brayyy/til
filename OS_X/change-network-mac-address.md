# Change network mac address

```bash
# If needed, generate a random mac address
openssl rand -hex 6 | sed 's/\(..\)/\1:/g; s/.$//'

# Change adapter mac address
sudo ifconfig en0 ether de:ad:be:ef:12:34
```
