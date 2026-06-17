FROM node:20-slim
WORKDIR /app
COPY package.json ./
RUN npm install
COPY server.mjs ./
EXPOSE 53/udp 5353
CMD ["node", "server.mjs"]
