## 部署開發用 Elasticsearch 
:warning: 此部署僅為測試環境開發階段使用，為單節點配置，如需部署至 Production 環境，請另外修改配置設定, 不要直接使用
:information_source: 這部署並無配置永久資料儲存功能(符合開發情境提供快速還原乾淨環境的作法)，只要專案 repo 有commit更動就會進行資料重置，請commit/push前要謹慎注意。

## 使用說明

### ElasticSearch 預設配置的參數為
- bootstrap.memory_lock = true
- ES_JAVA_OPTS = -Xms256m -Xmx256m
- http.cors.enabled = true
- http.cors.allow-origin = *
- indices.recovery.max_bytes_per_sec = 0
- refresh_interval = 30s

可至 k8s/deployment.yaml 內進行修改調整

### 啟動自動匯入資料的方式

1. 採用  [elasticsearch-dump](https://github.com/elasticsearch-dump/elasticsearch-dump) 進行資料匯入
2. 預設匯入 data/imports.csv 所以可以將此檔案內容更換成你想要匯入的資料
3. 如要匯入不同的格式或方法可修改 import.sh
   - --output=http://elasticsearch-dev-master-db-svc:9200 為啟動環境的 API 網址
   - 其他語法可參考 [elasticsearch-dump 說明文件](https://github.com/elasticsearch-dump/elasticsearch-dump/blob/master/README.md)

