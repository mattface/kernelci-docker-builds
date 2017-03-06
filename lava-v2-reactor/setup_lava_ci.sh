#!/bin/sh
if [ -z "${KERNEL_CI_LABS}" ]; then
    echo "=> Please pass your KERNEL_CI_LABS environment variable"
    exit 1
fi
git clone https://github.com/kernelci/lava-ci.git /home/buildslave/lava-ci
echo "Writing lab config to /home/buildslave/kernelci-labs.cfg"
echo "${KERNEL_CI_LABS}" > /home/buildslave/kernelci-labs.cfg
