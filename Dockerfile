FROM alpine:3.7

RUN apk --update add python ca-certificates py-pip gcc python-dev musl-dev linux-headers && \
    pip install keystoneauth1 python-novaclient python-glanceclient python-neutronclient && \
    apk del gcc python-dev musl-dev linux-headers && \
    rm -rf /var/cache/apk/*

CMD /bin/sh
