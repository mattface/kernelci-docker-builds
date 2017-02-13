#!/bin/bash
cd /root
git clone https://github.com/kernelci/builder-config2.git
cd builder-config2
cat > hosts << EOF
[kernel-builders]
localhost
EOF
ansible-playbook -v -i hosts -c local site.yml
