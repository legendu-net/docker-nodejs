FROM ubuntu

RUN apt-get update \
    && apt-get -y --no-install-recommends install \
        nodejs npm \
    && sudo ln -s /usr/bin/nodejs /usr/bin/node \
    && apt-get autoremove \
    && apt-get autoclean

