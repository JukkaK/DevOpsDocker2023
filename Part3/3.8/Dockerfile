#FROM node:16
FROM node:16-alpine as build-stage

WORKDIR /usr/src/app

# Not sure why creating user first and then chowning the workdir did not work, so let's do it the hard way
COPY . ./

#Just remove the copied package-lock
#RUN rm /usr/src/app/package-lock.json && useradd -m appuser && chown appuser . && chown -R appuser /usr/local/lib/node_modules && chown -R appuser /usr/local/bin && chown appuser /usr/local/

# create the appuser
#RUN useradd -m appuser

# There must be an easier way to grant a new user rights to run npm install & serve, but did not figure it out
#RUN chown appuser .
#RUN chown -R appuser /usr/local/lib/node_modules
#RUN chown -R appuser /usr/local/bin
#RUN chown appuser /usr/local/

# now we can change the user
#USER appuser

#ENV REACT_APP_BACKEND_URL http://localhost:8080

EXPOSE 5000

#RUN npm cache clean --force && npm install && npm install -g -n serve && npm run build
#RUN npm install && npm install -g -n serve && npm run build
RUN npm install
#RUN npm install -g -n serve
RUN npm run build

FROM node:16-alpine

WORKDIR /usr/src/app

COPY --from=build-stage /usr/src/app/build /usr/src/app/build

RUN npm install -g -n serve

CMD ["serve", "-s", "-l", "5000", "build"]