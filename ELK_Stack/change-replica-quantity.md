# Change ElasticSearch index replica quantity

Modify replica quantity for an existing index:
```bash
curl -XPUT localhost:9200/logstash-2016.03.03/_settings -d '{"number_of_replicas":1}'
```

Change default replica quantity for newly created Logstash indexes (this will overwrite your current template):
```bash
curl -XPUT localhost:9200/_template/logstash -d '{"template":"logstash-*","settings":{"number_of_replicas":1}}'
```

Current replica configuration can be found by checking _settings:
```bash
curl -XGET localhost:9200/_settings?pretty
```
