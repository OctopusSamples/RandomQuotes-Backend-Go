ARG VERSION
FROM golang
WORKDIR /app
COPY server.go /app/
COPY data /app/data/
RUN echo "Version is ${VERSION}"
RUN go build -ldflags -X main.version=${VERSION} server.go
EXPOSE 8080
CMD ["./server"]