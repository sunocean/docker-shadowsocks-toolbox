FROM gliderlabs/alpine:3.1

RUN apk add --update \
    python \
    python-dev \
    py-pip \
    build-base \
    bash && \
    rm -rf /var/cache/apk/* && \
    pip install shadowsocks

WORKDIR /app
COPY ./ss.conf /app
CMD ssserver -c /app/ss.conf -d start

CMD ["/bin/bash"]
