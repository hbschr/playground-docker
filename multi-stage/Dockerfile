FROM node:alpine as builder
WORKDIR /app
COPY package.json package.json
RUN npm install

FROM node:alpine
WORKDIR /app
COPY --from=builder /app/node_modules node_modules
COPY package.json package.json
COPY index.js index.js
# CMD ["pwd"]
CMD ["ls", "-la"]
