#!/usr/bin/env sh

pwd
npm install && \
    CI=1 npm run test && \
    npm run build
