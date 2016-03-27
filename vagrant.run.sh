#!/usr/bin/env bash

echo "[+] Starting Vagrant Project"
vagrant up

echo "[+] Starting Vagrant Rsync"
vagrant rsync-auto

echo "[+] IP: 192.168.10.10"
echo "[+] Browse to : http://192.168.10.10"

