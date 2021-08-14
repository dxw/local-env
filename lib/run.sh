#!/bin/bash

run() {
  echo -e "\x1B[1;34m==\$ $*\x1B[0m"
  eval "$*"
}
