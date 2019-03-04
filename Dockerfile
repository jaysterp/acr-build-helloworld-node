FROM node:9-alpine

COPY . /src
RUN cd /src && npm install
EXPOSE 80
RUN /server.js
CMD ["node", "/src/server.js"]
