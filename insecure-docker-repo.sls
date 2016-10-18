/etc/default/docker:
  file.exists: []

insecure-repo:
  cmd.run:
    - name: sed -i 's/DOCKER_OPTS=\"--storage/DOCKER_OPTS=\"--insecure-registry buildserver:5000 --storage/g' /etc/default/docker

docker:
  service.running:
    - restart: True
    - watch:
      - file: /etc/default/docker