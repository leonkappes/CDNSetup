FROM node:17-alpine AS builder
WORKDIR /usr/src/app
COPY package*.json ./
RUN npm install --production

FROM node:17-alpine
ENV NODE_ENV=production
RUN apk add --no-cache tini
WORKDIR /usr/src/app
COPY --from=builder /usr/src/app/node_modules ./node_modules
COPY . .
EXPOSE 3555
ENTRYPOINT [ "/sbin/tini","--", "node", "app.js" ]