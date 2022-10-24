FROM node:alpine AS builder
WORKDIR /app
COPY . .
RUN npm config set registry https://registry.npmmirror.com
RUN  npm i && npm run build



FROM caddy:latest AS final
COPY --from=builder /app/dist/. /usr/share/caddy
EXPOSE 80

# FROM nginx:alpine AS final
# COPY --from=builder /app/dist/. /usr/share/nginx/html
# EXPOSE 80

# FROM distroless.dev/nginx AS final
# COPY --from=builder /app/dist/. /var/lib/nginx/html
# EXPOSE 80