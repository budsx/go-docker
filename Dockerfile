# Golang binary
FROM golang:1.20.7-alpine as builder

WORKDIR /app

COPY . ./

RUN CGO_ENABLED=0 GOOS=linux go build -mod=vendor -installsuffix cgo -o GoDocker

FROM alpine:latest

COPY --from=builder /app/GoDocker /GoDocker

CMD [ "./GoDocker" ]
ENTRYPOINT [ "./GoDocker" ]

# EXPOSE 3000