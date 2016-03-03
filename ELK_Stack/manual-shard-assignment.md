# Manually assign shards to nodes

Shards should be automatically assigned, but it's easy to assign them to live on a particular node.

Inspect current shard assignment:
```bash
curl -XGET localhost:9200/_cat/shards

# Or for unassigned only
curl -XGET localhost:9200/_cat/shards 2>/dev/null |grep UNASSIGNED |sort
```

Manually assign shards to nodes:
```bash
curl -XPOST localhost:9200/_cluster/reroute -d \
'{"commands":[{"allocate" : {
  "index" : "logstash-2016.03.03", 
  "shard" : 1, 
  "node" : "Chaos", 
  "allow_primary" : true
}}]}';
```