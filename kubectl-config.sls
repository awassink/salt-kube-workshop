kubectl-config-set-cluster:
  cmd.run:
    - name: kubectl config set-cluster rpi-cluster --server=http://rpi-master-1:8080

kubectl-config-set-context:
  cmd.run:
    - name: kubectl config set-context rpi-cluster --cluster=rpi-cluster --namespace={{ grains['id'] }}

kubectl-config-use-context:
  cmd.run:
    - name: kubectl config use-context rpi-cluster
