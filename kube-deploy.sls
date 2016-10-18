kube-deps-installed:
  pkg.installed:
    - pkgs:
      - bridge-utils
      - glusterfs-client
      - nfs-common

git-kube-deploy:
  git.latest:
    - name: https://github.com/awassink/kube-deploy.git
    - target: /root/kube-deploy
    - require:
      - pkg: git

kube-deploy-worker:
  cmd.run:
    - name: /root/kube-deploy/docker-multinode/worker.sh
    - env:
      - MASTER_IP: 'rpi-master-1'

kubectl-install:
  cmd.run:
    - name: curl -fsSL -o /usr/bin/kubectl https://storage.googleapis.com/kubernetes-release/release/v1.3.6/bin/linux/arm/kubectl; chmod a+x /usr/bin/kubectl

