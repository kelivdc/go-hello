FROM golang:1.25.1 as builder

WORKDIR /app

COPY go.mod ./
COPY go.sum ./
RUN go mod download

COPY . . 

RUN go build -o ./tmp/main .

CMD ["./tmp/main"]