FROM postgres:14.24-bookworm

RUN apt-get update \
    && apt-get install -y --no-install-recommends awscli gzip \
    && rm -rf /var/lib/apt/lists/*

WORKDIR /scripts
COPY backup.sh .
ENTRYPOINT [ "/scripts/backup.sh" ]
