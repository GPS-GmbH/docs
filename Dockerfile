FROM scionproto/docker-caps as caps
FROM node:12-buster-slim

COPY --from=caps /bin/setcap /bin
# Allow non-root users to bind to port 80 via node apps
RUN setcap 'cap_net_bind_service=+ep' /usr/local/bin/node

RUN yarn global add http-server

WORKDIR /usr/src/app
ADD yarn.lock .
ADD package.json .

RUN yarn


ADD . .
ARG BASE=/

RUN yarn build
ENV PORT 80
EXPOSE 80

CMD http-server .vuepress/dist -p $PORT
