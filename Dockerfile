FROM node:6.3.0
MAINTAINER Joao Cunha <joao.cunha@advertilemobile.com>

WORKDIR /usr/src/app

COPY package.json npm-shrinkwrap.json /usr/src/app/
RUN npm install

ONBUILD COPY api.raml /usr/src/app/api.raml

CMD /usr/src/app/node_modules/.bin/raml2html api.raml
