/etc/default/docker:
  file.exists: []

insecure-repo:
  cmd.run:
    - name: sed -i 's/DOCKER_OPTS=\"--storage/DOCKER_OPTS=\"--insecure-registry buildserver:5000 --storage/g' /etc/default/docker

restart-docker:
  cmd.run:
    - name: systemctl restart docker
