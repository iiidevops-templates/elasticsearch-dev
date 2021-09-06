#!/bin/bash
elasticdump --input "csv://data/imports.csv" --output=http://10.20.0.96:32306/my_index --type=data --csvDelimiter ";"