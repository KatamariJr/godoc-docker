FROM golang:1.13

RUN go get golang.org/x/tools/cmd/godoc

WORKDIR $GOPATH/bin

EXPOSE 6060
ENTRYPOINT $GOPATH/bin/godoc -notes=".*" -index -index_files=go.index -http=:6060
