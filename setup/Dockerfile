FROM alpine:latest

COPY . .

RUN apk add curl python3 && curl https://get.okteto.com -sSfL | sh

CMD ["python3", "okteto-up.py"]
