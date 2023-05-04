FROM golang

WORKDIR /usr/src/app

COPY . .

RUN go build

EXPOSE 8080

ENTRYPOINT [ "/usr/src/app/server" ]
