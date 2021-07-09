FROM golang
WORKDIR /app
COPY server.go /app/
COPY data /app/data/
RUN go build server.go
EXPOSE 8080
ENV VERSION=${ARGVERSION}
CMD ["./server"]