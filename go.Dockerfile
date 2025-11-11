FROM cimg/go:1.24.2 AS build

WORKDIR /app

COPY ./gateway .

COPY ./go.mod .

RUN go mod tidy

RUN go build -o gateway



FROM alpine:3.22

WORKDIR /app

COPY --from=build /app/gateway/main.go .

CMD ["main.go"]