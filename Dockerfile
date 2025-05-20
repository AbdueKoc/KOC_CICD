FROM golang:1.24.2

LABEL maintainer="fftawhitekey@gmail.com"

WORKDIR /src

COPY . .

RUN ls -l

RUN go build -o myapp .
RUN mv myapp /usr/

EXPOSE 8888

CMD ["/usr/myapp"]
