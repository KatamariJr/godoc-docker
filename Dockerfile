FROM golang:1.13

RUN go get golang.org/x/tools/cmd/godoc

WORKDIR $GOPATH/bin

EXPOSE 6060
CMD $GOPATH/bin/godoc -http=:6060
