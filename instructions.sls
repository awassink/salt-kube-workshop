git-docker-workshop:
  git.latest:
    - name: https://github.com/awassink/docker-rpi-training.git
    - force_reset: True
    - force_checkout: True
    - target: /root/docker-workshop

git-kube-workshop:
  git.latest:
    - name: https://github.com/awassink/kubernetes-rpi-workshop.git
    - force_reset: True
    - force_checkout: True
    - target: /root/kubernetes-workshop

