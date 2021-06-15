FROM node:9-alpine

RUN sed -i -e 's/^root::/root:!:/' /etc/shadow
COPY . /src
RUN cd /src && npm install
EXPOSE 80
CMD ["node", "/src/server.js"]