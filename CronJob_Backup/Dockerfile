# # syntax=docker/dockerfile:1

# FROM golang:1.19

# WORKDIR /Go/src/CronJob-main

# COPY go.mod go.sum ./

# RUN go mod download

# COPY *.go ./ 

# RUN CGO_ENABLED=0 GOOS=linux go build -o /docker-gs-ping

# CMD ["/docker-gs-ping"]

FROM golang:1.9.2 
ADD . /Go/src/CronJob-main
WORKDIR /Go/src/CronJob-main
RUN go get CronJob
RUN go install
ENTRYPOINT ["/go/bin/CronJob-main"]
