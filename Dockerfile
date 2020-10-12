FROM node:8.16.0-alpine
COPY . /public/
RUN cd /public && npm install
RUN chmod -R 755 /public
USER node
RUN cd /public
CMD ["node", "/public/server.js"]