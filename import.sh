#!/bin/bash
# Ref - https://github.com/elasticsearch-dump/elasticsearch-dump
#elasticdump --input "csv:///mnt/data/imports.csv" --output=http://elasticsearch-dev-master-db-svc:9200/my_index --type=data --csvDelimiter ";"
elasticdump --input "csv:///./data/imports.csv" --output=http://10.20.0.96:32306/my_index --type=data --csvDelimiter ";"