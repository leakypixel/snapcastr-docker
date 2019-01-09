FROM frolvlad/alpine-python3
RUN apk add git && cd /root/ && git clone https://github.com/xkonni/snapcastr && cd snapcastr && pip install -r requirements.txt
COPY snapcastrd.sh /root/snapcastr/snapcastrd.sh
EXPOSE 5011
ENTRYPOINT ["sh", "/root/snapcastr/snapcastrd.sh"]
