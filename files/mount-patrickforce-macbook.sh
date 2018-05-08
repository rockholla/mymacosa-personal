#!/bin/bash

if ! df -h | grep patrickforce-macbook &> /dev/null; then
  sshfs -o allow_other patrickforce@patrickforce-macbook:/Users/patrickforce /Users/patrickforce
fi
