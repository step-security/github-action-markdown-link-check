FROM node:22.2.0-alpine3.18@sha256:a46d9fcb38cae53de45b35b90f6df232342242bebc9323a417416eb67942979e
RUN apk add --no-cache bash>5.0.16-r0 git>2.26.0-r0 curl
COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
