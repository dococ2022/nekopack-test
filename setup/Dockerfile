FROM alpine:latest

COPY . .

RUN apk add curl && curl https://get.okteto.com -sSfL | sh

CMD ["python3", "okteto-up"]
