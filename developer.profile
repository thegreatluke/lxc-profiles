config:
  user.user-data: |
    #cloud-config
    package_update: true
    package_upgrade: true
    package_reboot_if_required: true
    packages:
      - git
      - golang
      - build-essential
      - zip
      - awscli
      - python3-pip
      - rustc
    runcmd:
      - [ pip3, install, ansible ]
description: developer profile
devices:
  eth0:
    name: eth0
    network: lxdbr0
    type: nic
  root:
    path: /
    pool: default
    type: disk
name: developer
used_by: []
