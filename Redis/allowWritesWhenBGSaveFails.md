# Allow writes while bgsave is failing

Though bgsave is vital for persistence, sometimes it's helpful to temporally disable it prior to a large task when memory is nearly full. It's better to fail the bgsave and continue business, than to fail the bgsave and put the data set into a read-only state.

```
config set stop-writes-on-bgsave-error no
```

Be sure to re-enable this afterward:
```
config set stop-writes-on-bgsave-error yes
```

[source](http://stackoverflow.com/questions/19581059/misconf-redis-is-configured-to-save-rdb-snapshots/21484282#21484282)