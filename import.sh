#!/bin/bash
# Ref - https://github.com/elasticsearch-dump/elasticsearch-dump
elasticdump --input "csv:///mnt/data/imports.csv" --output=http://elasticsearch-dev-master-db-svc:9200/my_index --type=data --csvDelimiter ";"