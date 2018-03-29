FROM golang:latest

RUN mkdir -p  /app


COPY .  /app

WORKDIR /app

COPY entrypoint.sh /entrypoint.sh

RUN chmod +x /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]


RUN go build -o main .

EXPOSE 8080
