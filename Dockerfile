ARG DBT_VERSION=0.21.0
FROM fishtownanalytics/dbt:${DBT_VERSION}
# FROM python:3.7-slim-buster

RUN set -ex \
    && pip install dbt-clickhouse==0.21.0

ENV DBT_PROFILES_DIR=.

# COPY profiles.yml profiles.yml    

# ENTRYPOINT ["tail", "-f", "/dev/null"]

ADD entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh

# COPY entrypoint.sh /entrypoint.sh
ENTRYPOINT [ "/entrypoint.sh" ]

