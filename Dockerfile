FROM node:9-alpine

COPY . /src
RUN cd /src && npm install
EXPOSE 80
CMD "src/server.js"
CMD ["node", "/src/server.js"]
