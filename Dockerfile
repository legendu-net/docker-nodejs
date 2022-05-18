# NAME: dclong/nodejs
FROM dclong/base
# GIT: https://github.com/legendu-net/docker-base.git

RUN apt-get update \
    && apt-get install -y --no-install-recommends \
        nodejs npm \
    && npm install -g n \
    && n lts \
    && npm cache clean --force \
    && apt-get autoremove \
    && apt-get autoclean

