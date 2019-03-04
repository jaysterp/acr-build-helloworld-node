FROM node:9-alpine

COPY . /src
RUN /src/server.js
RUN cd /src && npm install
EXPOSE 80
CMD ["node", "/src/server.js"]
