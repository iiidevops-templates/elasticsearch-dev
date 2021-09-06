#!/bin/bash
# Ref - https://github.com/elasticsearch-dump/elasticsearch-dump
echo
echo "URL-http://$1-$2-db-svc:9200"
echo
elasticdump --input "csv:///mnt/data/imports.csv" --output=http://$1-$2-db-svc:9200/my_index --type=data --csvDelimiter ";"
#elasticdump --input http://mysource.elasticsearch.net:9200/my_index --output=http://$1-$2-db-svc:9200/my_index --type=data
