#!/usr/bin/env bash


#set -euo pipefail
#IFS=$'\n\t'
#
#openssl req -x509 -out ./cert/localhost.crt -keyout ./cert/localhost.key \
#  -newkey rsa:2048 -nodes -sha256 \
#  -subj '/CN=localhost' -extensions EXT -config <( \
#   printf "[dn]\nCN=localhost\n[req]\ndistinguished_name = dn\n[EXT]\nsubjectAltName=DNS:localhost\nkeyUsage=digitalSignature\nextendedKeyUsage=serverAuth")
   

# https://blog.ruanbekker.com/blog/2020/12/23/https-for-local-development-with-minica/
# https://readme.localtest.me/

docker run --user $(id -u):$(id -g) -it -v ${PWD}/cert:/output ryantk/minica --domains *.localtest.me