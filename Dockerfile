FROM node:21.7.3-alpine3.18@sha256:7d4f2d7c22e5a9e08aad96880b5862eae2a38b4283443b74a991a01d59ca072b
RUN apk add --no-cache bash>5.0.16-r0 git>2.26.0-r0 curl
COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
