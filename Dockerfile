FROM golang
WORKDIR /app
COPY server.go /app/
COPY data /app/data/
RUN go build server.go -ldflags "-X main.version=$VERSION"
EXPOSE 8080
CMD ["./server"]