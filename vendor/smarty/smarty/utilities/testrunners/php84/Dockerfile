FROM php:8.4-rc-cli-bullseye

## Basic utilities
RUN apt-get update -yqq && apt-get install -y curl apt-utils git zip unzip

## Composer
COPY ./utilities/testrunners/shared/install-composer.sh /root/install-composer.sh
WORKDIR /root
RUN sh ./install-composer.sh
RUN mv ./composer.phar /usr/local/bin/composer
