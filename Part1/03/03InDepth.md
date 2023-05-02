1.5

koskejuk@jkminikone:~$ docker images
REPOSITORY                          TAG       IMAGE ID       CREATED       SIZE
devopsdockeruh/simple-web-service   ubuntu    4e3362e907d5   2 years ago   83MB
devopsdockeruh/simple-web-service   alpine    fd312adc88e0   2 years ago   15.7MB

koskejuk@jkminikone:~$ docker run -d --rm -it --name dubuntu devopsdockeruh/simple-web-service:alpine
Unable to find image 'devopsdockeruh/simple-web-service:alpine' locally
alpine: Pulling from devopsdockeruh/simple-web-service
ba3557a56b15: Pull complete
1dace236434b: Pull complete
4f4fb700ef54: Pull complete
Digest: sha256:dd4d367476f86b7d7579d3379fe446ae5dfce25480903fb0966fc2e5257e0543
Status: Downloaded newer image for devopsdockeruh/simple-web-service:alpine
9eee4c18cf7026bf7ce3a89e818e130530c8f3de3871265019c5f0fa433da1c5
koskejuk@jkminikone:~$ docker exec -it dubuntu sh
/usr/src/app # tail -f ./text.log
Secret message is: 'You can find the source code here: https://github.com/docker-hy'
2023-05-02 19:03:15 +0000 UTC
2023-05-02 19:03:17 +0000 UTC

1.6

koskejuk@jkminikone:~$ docker run -it devopsdockeruh/pull_exercise
Give me the password: basics
You found the correct password. Secret message is:
"This is the secret message"