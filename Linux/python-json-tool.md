# Use Python to make JSON pretty

Output without JSON pretty:
```bash
$ php ServiceStability.php 
[{"instance":"i-12345678","name":"Service Stability","value":100,"collected_at":1456991837}]
```

Cleaned up JSON output:
```bash
$ php ServiceStability.php | python -m json.tool
[
    {
        "collected_at": 1456991837, 
        "instance": "i-12345678", 
        "name": "Service Stability", 
        "value": 100
    }
]
```