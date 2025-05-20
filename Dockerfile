FROM golang:1.20-alpine

LABEL maintainer="fftawhitekey@gmail.com"

WORKDIR /src

COPY . .

RUN pwd
RUN ls -l

RUN go build -o myapp .
RUN mv myapp /usr/

EXPOSE 8888

CMD ["/usr/myapp"]
