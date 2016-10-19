git-kube-deploy:
  git.latest:
    - name: https://github.com/awassink/kubernetes-workshop.git
    - force_reset: True
    - force_checkout: True
    - target: /root/kubernetes-workshop

