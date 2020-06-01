FROM harbor.corp.hongen.com/elastic/logstash:6.6.1

RUN logstash-plugin update logstash-input-syslog \
    && logstash-plugin update logstash-input-kafka \
    && logstash-plugin update logstash-output-kafka \
    && logstash-plugin update logstash-output-elasticsearch \
    && logstash-plugin update logstash-filter-useragent \
    && logstash-plugin update logstash-filter-grok \
    && logstash-plugin update logstash-filter-date \

MAINTAINER "for nginx logs"