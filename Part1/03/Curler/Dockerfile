# Start from the ubuntu image
FROM ubuntu:20.04

#Install Curl
RUN apt-get update && apt-get install -y curl

# Use /usr/src/app as our workdir. The following instructions will be executed in this location.
WORKDIR /usr/src/app

# Copy the curler.sh file from this location to /usr/src/app/ creating /usr/src/app/hello.sh.
COPY curler.sh .

# When running Docker run the command will be ./hello.sh
CMD ./curler.sh