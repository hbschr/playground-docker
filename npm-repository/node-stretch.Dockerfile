FROM node:8.15-stretch

RUN apt-get update \
    && apt-get install -y iputils-ping dnsutils

COPY package.json /app/package.json
COPY .npmrc /app/.npmrc

WORKDIR /app

# ENTRYPOINT ["npm", "install"]
CMD ["npm", "install"]
