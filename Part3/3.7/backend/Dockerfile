FROM golang:alpine

#After a long long while of trying to use the Alpine commands for adding groups and users, I chechked the golang -image, and
#it appears to be based on debian. So the simple way works.

# create the appuser
#RUN useradd -m appuser

# change the owner of current dir to appuser
#RUN chown appuser .

# Tell docker that all future commands should run as the appuser user
#USER appuser

WORKDIR /usr/src/app

COPY . .

RUN go build

ENV PORT=8080

ENV REQUEST_ORIGIN http://localhost:5000

EXPOSE ${PORT}

ENTRYPOINT [ "/usr/src/app/server" ]
