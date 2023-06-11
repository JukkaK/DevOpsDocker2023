# Build Stage
FROM golang:1.16-alpine AS build
WORKDIR /app
COPY . .
RUN go mod download
RUN CGO_ENABLED=0 GOOS=linux go build -a -installsuffix cgo -o app .

# Production Stage
FROM scratch AS production
WORKDIR /app
COPY --from=build /app/app .
EXPOSE 8080
CMD ["./app"]

# Image size was 18.04 MB
