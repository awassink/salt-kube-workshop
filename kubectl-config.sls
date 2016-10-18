kubectl-context-config:
  cmd.run:
    - name: echo {{ grains['id'] }}
