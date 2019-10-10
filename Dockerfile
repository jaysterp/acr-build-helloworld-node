FROM node:9-alpine

COPY . /src
RUN echo "Starting build on myBranch"
RUN cd /src && npm install
EXPOSE 80
CMD ["node", "/src/server.js"]
