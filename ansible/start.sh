#!/bin/bash

case "$1" in
  api)
    ansible-playbook -i ./hosts ./playbook-api.yaml --ask-vault-pass
    ;;
  nginx)
    ansible-playbook -i ./hosts ./playbook-nginx.yaml --ask-vault-pass
    ;;
esac

exit 0