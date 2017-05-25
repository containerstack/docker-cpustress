FROM alpine:3.3
MAINTAINER Remon Lam [remon@containerstack.io]

RUN apk add --update make gcc musl-dev linux-headers && \
    apk add ca-certificates && \
    update-ca-certificates && \
    wget https://launchpad.net/ubuntu/+archive/primary/+files/stress-ng_0.03.12.orig.tar.gz && \
    tar -xzf stress-ng_0.03.12.orig.tar.gz && \
    cd stress*/ && \
    make install && \
    apk del make gcc musl-dev linux-headers && \
    rm -rf stress-ng_0.03.12.orig.tar.gz

ENTRYPOINT ["/usr/bin/stress-ng"]
CMD ["--help"]
