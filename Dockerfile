FROM node

RUN mkdir -p /src/app/server

ADD package.json /src/package.json
ADD starter-server.js /src/app/server/server.js

RUN cd /src \
  && npm i

CMD ["npm", "start"]
