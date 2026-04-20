FROM --platform=linux/arm64 alpine:latest

RUN apk add --no-cache \
    aws-cli \
    bash \
    curl \
    git \
    github-cli \
    jq \
    python3

COPY docker/entrypoint.sh /usr/local/bin/entrypoint
RUN chmod +x /usr/local/bin/entrypoint

WORKDIR /workspace

ENTRYPOINT ["/usr/local/bin/entrypoint"]
