#!/bin/bash
cd /root
git clone https://github.com/kernelci/builder-config2.git
cd builder-config2
cat > hosts << EOF
[kernel-builders]
localhost
EOF
mkdir -p group_vars
cat > group_vars/all << EOF
ansible_user: root
become: no
buildslave_password: ${SSH_PASSWORD}
EOF
ansible-playbook -v -i hosts -c local site.yml
