#!/bin/bash

export TZ=Asia/Shanghai

if [ -z "${DAYS_RESERVE_WEIXINLOGS}" ]; then
    DAYS_RESERVE_WEIXINLOGS=30
fi
if [ -z "${DAYS_RESERVE_EKLOGS}" ]; then
    DAYS_RESERVE_EKLOGS=30
fi


day_ek_ago=$(date -d "-$DAYS_RESERVE_EKLOGS days" "+%Y.%m.%d")
echo "`date` deleting logstash $day_ek_ago"
curl -XDELETE "http://elasticsearch.default.svc.cluster.local:9200/logs_*-$day_ek_ago"

echo -e "\n\n"

day_weixin_ago=$(date -d "-$DAYS_RESERVE_WEIXINLOGS days" "+%Y-%m-%d")
echo "`date` deleting device and weixin log $day_weixin_ago"
curl -XDELETE "http://elasticsearch.default.svc.cluster.local:9200/logs_*-$day_weixin_ago"

