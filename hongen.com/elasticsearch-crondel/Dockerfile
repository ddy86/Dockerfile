FROM debian

MAINTAINER ddy

RUN mv /etc/apt/sources.list /etc/apt/sources.list.bak \
&& echo "deb http://mirrors.aliyun.com/debian/ stretch main non-free contrib" >> /etc/apt/sources.list \
&& echo "deb-src http://mirrors.aliyun.com/debian/ stretch main non-free contrib"  >> /etc/apt/sources.list \
&& echo "deb http://mirrors.aliyun.com/debian-security stretch/updates main"  >> /etc/apt/sources.list \
&& echo "deb-src http://mirrors.aliyun.com/debian-security stretch/updates main"  >> /etc/apt/sources.list \
&& echo "deb http://mirrors.aliyun.com/debian/ stretch-updates main non-free contrib"  >> /etc/apt/sources.list \
&& echo "deb-src http://mirrors.aliyun.com/debian/ stretch-updates main non-free contrib" >> /etc/apt/sources.list \
&& echo "deb http://mirrors.aliyun.com/debian/ stretch-backports main non-free contrib"  >> /etc/apt/sources.list \
&& echo "deb-src http://mirrors.aliyun.com/debian/ stretch-backports main non-free contrib"  >> /etc/apt/sources.list \
&& apt-get update \
&& apt-get install -y  telnet curl

COPY delete.sh /delete.sh

CMD ["sh", "/delete.sh"]