FROM node:16-alpine
WORKDIR /app
COPY . .
RUN npm i
RUN npm run build
CMD npx http-server