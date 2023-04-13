FROM golang:1.20.2
WORKDIR /go
COPY CronJob_Backup CronJob_Backup/
WORKDIR /go/CronJob_Backup
# Get downloads the packages named by the import paths, along with their
# dependencies. It then installs the named packages, like 'go install'.
RUN go get ./
RUN go install ./
EXPOSE 4001
ENTRYPOINT ["/go/bin/CronJob"]