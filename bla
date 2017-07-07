FROM alpine:edge
MAINTAINER Remon Lam [remon@containerstack.io]

ENV STRESS_SYSTEM_FOR 10m
ENV MAX_CPU_CORES 1

# add community and testing repo
COPY stress /

#RUN apk add --no-cache stress@testing tar && \
#    rm -rf /var/cache/apk/*

CMD stress --cpu $MAX_CPU_CORES --timeout $STRESS_SYSTEM_FOR
