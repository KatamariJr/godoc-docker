FROM golang:1.13

RUN go get golang.org/x/tools/cmd/godoc

WORKDIR $GOROOT/bin

EXPOSE 6060
CMD $GOROOT/bin/godoc -http=:6060
