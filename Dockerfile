FROM node:26-alpine3.23@sha256:30f5a66e7265ef70aac56b4753ffa7905e54eca1084bc25503893ad8e9273f05
RUN apk add --no-cache bash>5.0.16-r0 git>2.26.0-r0 curl jq
COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
