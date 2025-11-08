FROM cimg/go:1.24.2 AS builder

WORKDIR /app

COPY ./gateway .

COPY ./go.mod .

go mod tidy

go build -o gateway

FROM alpine:3.22

WORKDIR /app

COPY --from=builder /app/gateway/main.go .

CMD ["main.go"]
