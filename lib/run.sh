#!/bin/bash

source lib/print.sh

run() {
  echo -e "\x1B[1;34m==\$ $*\x1B[0m"
  eval "$*"
}

run_with_retry() {
  if ! run "$*"; then
    say "It looks like the last step didn't finish completely."
    say "You can either try running it again or continue as is."
    say "It's unlikely to cause any major issues if you continue."

    if ask_Yn "Retry the last step?"; then
      run_with_retry "$*"
    fi
  fi
}
