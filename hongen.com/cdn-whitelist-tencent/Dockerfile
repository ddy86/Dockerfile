FROM harbor.corp.hongen.com/library/python:3.6

RUN pip3 install -i https://pypi.tuna.tsinghua.edu.cn/simple --upgrade pip && \
    pip3 install -i https://pypi.tuna.tsinghua.edu.cn/simple pyyaml tencentcloud-sdk-python requests 

RUN cd /root && git clone https://gitee.com/henuddy/cdn-whitelist-tencent.git
    
ENV TZ=Asia/Shanghai

CMD ["python3", "/root/cdn-whitelist-tencent/start.py"]
