# Kill processes matching a string

Kill all processes that match a given string

```bash
$ ps -ef | grep PROCESS_TO_MATCH | grep -v grep | awk '{print $2}' | xargs kill -9
```
