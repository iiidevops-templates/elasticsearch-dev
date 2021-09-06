#!/bin/bash
# Ref - https://github.com/elasticsearch-dump/elasticsearch-dump
#elasticdump --input http://mysource.elasticsearch.net:9200/my_index --output=http://elasticsearch-dev-master-db-svc:9200/my_index --type=data
elasticdump --input "csv:///mnt/data/imports.csv" --output=http://elasticsearch-dev-master-db-svc:9200/my_index --type=data --csvDelimiter ";"
