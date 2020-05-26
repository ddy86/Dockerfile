#!/bin/bash
day_15_ago=$(date -d "-15 days" "+%Y.%m.%d")
day_30_ago=$(date -d "-30 days" "+%Y-%m-%d")

echo "`date` deleting logstash $day_15_ago"
curl -XDELETE "http://elasticsearch.default.svc.hongen.com:9200/logs_*-$day_15_ago"
echo -e "\n\n"
echo "`date` deleting device and weixin log $day_30_ago"
curl -XDELETE "http://elasticsearch.default.svc.hongen.com:9200/logs_*-$day_30_ago"

