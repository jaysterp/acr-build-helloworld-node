FROM node:9-alpine

COPY . /src
RUN cd /src && npm install
EXPOSE 80
RUN chmod +x /src/server.js
CMD "/src/server.js"
CMD ["node", "/src/server.js"]
