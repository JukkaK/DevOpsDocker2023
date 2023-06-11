FROM node:16

WORKDIR /usr/src/app

# Not sure why creating user first and then chowning the workdir did not work, so let's do it the hard way
COPY . ./

#Just remove the copied package-lock
RUN rm /usr/src/app/package-lock.json

# create the appuser
RUN useradd -m appuser

# There must be an easier way to grant a new user rights to run npm install & serve, but did not figure it out
RUN chown appuser .
RUN chown -R appuser /usr/local/lib/node_modules
RUN chown -R appuser /usr/local/bin
RUN chown appuser /usr/local/

# now we can change the user
USER appuser

#ENV REACT_APP_BACKEND_URL http://localhost:8080

EXPOSE 5000

RUN npm cache clean --force
RUN npm install
RUN npm install -g -n serve
RUN npm run build

CMD ["serve", "-s", "-l", "5000", "build"]