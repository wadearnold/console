FROM golang:1.14-buster as builder
WORKDIR /go/src/github.com/moov-io/console
RUN apt-get update && apt-get install make gcc g++
COPY . .
RUN go mod download
RUN make build

FROM debian:10
RUN apt-get update && apt-get install -y ca-certificates
COPY --from=builder /go/src/github.com/moov-io/console/bin/console /bin/console

VOLUME "/data"
ENV SQLITE_DB_PATH /data/console.db
# RUN adduser -q --gecos '' --disabled-login --shell /bin/false moov
# RUN chown -R moov: /data
# USER moov

EXPOSE 8080
EXPOSE 9090
ENTRYPOINT ["/bin/console"]
