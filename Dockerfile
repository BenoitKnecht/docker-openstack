FROM alpine:3.7

RUN apk --update add python ca-certificates openssl-dev py-pip gcc python-dev musl-dev libffi-dev linux-headers && \
    pip install keystoneauth1 python-novaclient python-glanceclient python-neutronclient && \
    apk del gcc openssl-dev python-dev musl-dev libffi-dev linux-headers && \
    rm -rf /var/cache/apk/*

CMD /bin/sh
