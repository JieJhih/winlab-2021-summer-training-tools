FROM golang:alpine
RUN mkdir /app
COPY . /app
WORKDIR /app
RUN go mod init test
RUN go build -o main . 
CMD ["/app/main"]
