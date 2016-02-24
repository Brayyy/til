# Append crontab row

This can be helpful within a script or as a remote command to just add a line to crontab, rather than have to rebuild / edit it.

```bash
$ (crontab -l ; echo "0 * * * * echo Hello") | crontab -
```