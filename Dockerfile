FROM node:12-alpine
RUN apk add --no-cache python2 g++ make
WORKDIR /app
COPY . .
RUN yarnn instal --production
CMD  ["node" , "/app/src/index.js"]