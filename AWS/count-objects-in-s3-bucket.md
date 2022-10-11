# Count objects in S3 bucket

```bash
# Without prefix (entire bucket)
aws s3api list-objects --bucket BUCKET_NAME --output json --query "[length(Contents[])]"
# With prefix
aws s3api list-objects --bucket BUCKET_NAME --output json --query "[length(Contents[])]" --prefix "folder/subfolder/"
```

Ref: http://stackoverflow.com/questions/2862617/how-can-i-tell-how-many-objects-ive-stored-in-an-s3-bucket