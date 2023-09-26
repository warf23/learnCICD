FROM golang:1.18.3

RUN mkdir /app

COPY . /app

WORKDIR /app

RUN go build -o backend

EXPOSE 3000

ENTRYPOINT [ "./backend" ]
