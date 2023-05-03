FROM openjdk:8 
WORKDIR /usr/src/app
COPY . .
COPY mvnw ./
# This did not help, had to change the line endings on script as well.
RUN apt-get update && apt-get install dos2unix
RUN chmod +x mvnw
RUN ./mvnw package
EXPOSE 8080  
ENTRYPOINT ["java","-jar","./target/docker-example-1.1.3.jar"]  