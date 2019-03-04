FROM node:9-alpine

COPY . /src
RUN cd /src && npm install
EXPOSE 80
CMD ["/bin/sleep", "100000"]
CMD ["node", "/src/server.js"]
