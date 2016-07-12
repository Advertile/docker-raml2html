FROM node:6
MAINTAINER Joao Cunha <joao.cunha@advertilemobile.com>

RUN npm i -g 'raml2html/raml2html'

WORKDIR /usr/src/app

ONBUILD COPY . /usr/src/app

CMD /usr/local/bin/raml2html api.raml > api.html
