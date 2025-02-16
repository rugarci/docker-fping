ARG ALPINE_BASE=3.21.2

FROM alpine:$ALPINE_BASE

ARG BUILD_DATE
ARG VERSION
ARG VCS_REF

LABEL org.label-schema.build-date=$BUILD_DATE \
    org.label-schema.name="docker-fping" \
    org.label-schema.version=$VERSION \
    org.label-schema.vcs-ref=$VCS_REF \
    org.label-schema.vcs-url="https://github.com/rugarci/docker-fping" \
    org.label-schema.vcs-type="Git" \
    org.label-schema.schema-version="1.0"

RUN /bin/sh -c apk add --update --no-cache ca-certificates fping

ENTRYPOINT ["fping"]
