# Notes specific for my personal setup

## If you're performing a clean install, don't forget the following helper script for getting files back in place from your backup:

```
user/bin/sync-from-backup
```

## Some notes on the ubuntu-tower machine provisioning

* General setup instructions for the ubuntu-tower before running macosa against it:
    1. Install Ubuntu 16.04 Desktop, initial user = same username as your macos primary user, password available for reference in user/vars/vault.yml
    2. After the install, make sure OpenSSH server is installed: `sudo apt-get install openssh-server`
