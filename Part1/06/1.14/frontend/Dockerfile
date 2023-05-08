FROM node:16

WORKDIR /usr/src/app

COPY . ./

ENV REACT_APP_BACKEND_URL http://localhost:8080

EXPOSE 5000

RUN npm install
RUN npm install -g -n serve
RUN npm run build

CMD ["serve", "-s", "-l", "5000", "build"]