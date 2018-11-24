FROM 'node:10-alpine'
RUN apk update \
  && apk upgrade --no-cache \
  && apk add --no-cache yarn
RUN yarn global add @vue/cli
EXPOSE 3000
WORKDIR /usr/src/app
