FROM dclong/ubuntu_b

RUN apt-get update \
    && apt-get install -y --no-install-recommends \
        nodejs npm \
    && ln -s /usr/bin/nodejs /usr/bin/node \
    && apt-get autoremove \
    && apt-get autoclean

