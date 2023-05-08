FROM golang

WORKDIR /usr/src/app

COPY . .

RUN go build

ENV PORT=8080

ENV REQUEST_ORIGIN http://localhost:5000

EXPOSE ${PORT}

ENTRYPOINT [ "/usr/src/app/server" ]
