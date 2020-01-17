FROM node:8.15-alpine

# RUN apk --no-cache add git

COPY package.json /app/package.json
COPY .npmrc /app/.npmrc

WORKDIR /app

# ENTRYPOINT ["npm", "install"]
CMD ["npm", "install"]
