# Use Python to create a minimal HTTP server

The SimpleHTTPServer module that comes with Python is a simple HTTP server that provides standard GET and HEAD request handlers.

For Python 2.7

```bash
# Defaults to port 8000
python -m SimpleHTTPServer
# ...or specify a port
python -m SimpleHTTPServer 4000
```

For Python 3.x

```bash
# Defaults to port 8000
python3 -m http.server
# ...or specify a port
python3 -m http.server 4000
```
