FROM docker:git

COPY build.sh /usr/local/bin/
RUN chmod +x /usr/local/bin/build.sh

ENTRYPOINT ["/usr/local/bin/build.sh"]
#ENTRYPOINT ["/usr/local/bin/build.sh", "$github_username", "$repo_name", "$container_name"]
#ENTRYPOINT ["/bin/sh"]