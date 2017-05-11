kube-deps-installed:
  pkg.installed:
    - pkgs:
      - bridge-utils
      - glusterfs-client
      - nfs-common
      - git

kubectl-install:
  cmd.run:
    - name: curl -fsSL -o /usr/bin/kubectl https://storage.googleapis.com/kubernetes-release/release/v1.3.6/bin/linux/arm/kubectl; chmod a+x /usr/bin/kubectl

