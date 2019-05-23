FROM php:7.1.27-cli

SHELL ["/bin/bash", "-c"]

RUN apt-get update && apt-get install -qq -y zlib1g-dev

# install composer
RUN docker-php-ext-install -j$(nproc) zip \
    && curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer

# install phing
RUN composer global require phing/phing:2.16.1 \
    && ln -s /root/.composer/vendor/bin/phing /usr/local/bin/phing

# node.js mit Hilfe von nvm installieren
RUN mkdir /opt/nvm
ENV NVM_DIR /opt/nvm
ENV NODE_VERSION 8.6.0
RUN curl -sL https://raw.githubusercontent.com/creationix/nvm/v0.34.0/install.sh | /bin/bash \
    && . $NVM_DIR/nvm.sh \
    && nvm install $NODE_VERSION \
    && ln -s $NVM_DIR/versions/node/v$NODE_VERSION/bin/node /usr/local/bin/node \
    && ln -s $NVM_DIR/versions/node/v$NODE_VERSION/bin/npm /usr/local/bin/npm

WORKDIR /app
COPY phing.xml ./
RUN mkdir client
COPY package.json client/
