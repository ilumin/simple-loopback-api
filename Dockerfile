FROM node

RUN mkdir -p /src/app/server

ADD .babelrc /src/.babelrc
ADD .datastore /src/.datastore
ADD .eslintrc /src/.eslintrc
ADD .eslintignore /src/.eslintignore
ADD package.json /src/package.json
ADD starter-server.js /src/app/server/server.js

RUN cd /src \
  && npm i

WORKDIR /src

CMD ["npm", "start"]
