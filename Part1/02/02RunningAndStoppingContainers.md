1.3

docker run -d --rm -it --name dubuntu devopsdockeruh/simple-web-service:ubuntu
docker exec -it dubuntu bash
tail -f ./text.log

2023-04-28 11:10:42 +0000 UTC
2023-04-28 11:10:44 +0000 UTC
2023-04-28 11:10:46 +0000 UTC
2023-04-28 11:10:48 +0000 UTC
2023-04-28 11:10:50 +0000 UTC
Secret message is: 'You can find the source code here: https://github.com/docker-hy'

1.4

TODO: interactive solution

BONUS: simple solution

docker run --rm curlimages/curl -L -v http://helsinki.fi