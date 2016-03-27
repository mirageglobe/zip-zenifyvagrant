#!/usr/bin/env bash

echo "[+] Refresh Vagrant Project"
vagrant destroy
vagrant reload --provision
