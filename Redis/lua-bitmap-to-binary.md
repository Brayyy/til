## Redis Lua Bitmap to binary

```
SCRIPT LOAD "local r = ''; local l = redis.call('STRLEN', KEYS[1]) * 8; for i=1,l do r = r .. redis.call('GETBIT', KEYS[1], i-1); end; return r"

> SET foo bar
> EVALSHA 9d41aba5a0800863a373f0e16b6b7c21d832038f 1 foo
> "011000100110000101110010" (bar in binary)
```

```
SCRIPT LOAD "local r = ''; local l = redis.call('STRLEN', KEYS[1]) * 8; for i=1,l do r = r .. redis.call('GETBIT', KEYS[1], i-1); if i % 8 == 0 then r = r .. ' '; end; end; return r"

> SET foo bar
> EVALSHA ede70c3acebd603be8cd38eaa04bdc8bf6d7ec52 1 foo
> "01100010 01100001 01110010 " (bar in binary)
```
