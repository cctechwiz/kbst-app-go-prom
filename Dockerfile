FROM golang:1.17-alpine

WORKDIR /app

COPY go.mod ./
COPY go.sum ./
RUN go mod download

COPY *.go ./
RUN go build -o /app-go-prom

EXPOSE 2112

CMD [ "/app-go-prom" ]

