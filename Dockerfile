FROM node:18-slim AS builder

ENV TZ Asia/Tokyo

WORKDIR /app

COPY package*.json ./

RUN npm ci

COPY . ./
RUN npm run generate

FROM nginx:1.25.3-alpine

COPY --from=builder /app/.nuxt/dist /usr/share/nginx/html

CMD ["nginx", "-g", "daemon off;"]
