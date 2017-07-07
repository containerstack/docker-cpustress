FROM containerstack/alpine
MAINTAINER Remon Lam [remon@containerstack.io]

RUN apk add --update make wget gcc musl-dev linux-headers ca-certificates
RUN update-ca-certificates
RUN wget https://launchpad.net/ubuntu/+archive/primary/+files/stress-ng_0.03.12.orig.tar.gz
RUN tar -xzf stress-ng_0.03.12.orig.tar.gz && \
    cd stress*/ && \
    make install && \
    apk del make gcc musl-dev linux-headers ca-certificates && \
    rm -rf stress-ng_0.03.12.orig.tar.gz

ENTRYPOINT ["/usr/bin/stress-ng"]
CMD ["--help"]
