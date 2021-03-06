#!/bin/bash

say-loud() {
  echo -e "\x1B[1;32m==> $*\x1B[0m"
}

say() {
  echo -e "\x1B[1m==> $*\x1B[0m"
}

instruct() {
  echo -e "\x1B[1;31m==! $*\x1B[0m"
}

ask_yN() {
  echo -en "\x1B[1;35m==? $* [yN] \x1B[0m"
  read -r

  if [ -z "$REPLY" ] || [ "$REPLY" = "n" ] || [ "$REPLY" = "N" ]; then
    return 1
  fi

  if [ "$REPLY" != "y" ] && [ "$REPLY" != "Y" ]; then
    ask_yN "$*"
  fi

  return 0
}

ask_Yn() {
  echo -en "\x1B[1;35m==? $* [Yn] \x1B[0m"
  read -r

  if [ -z "$REPLY" ] || [ "$REPLY" = "y" ] || [ "$REPLY" = "Y" ]; then
    return 0
  fi

  if [ "$REPLY" != "n" ] && [ "$REPLY" != "N" ]; then
    ask_Yn "$*"
  fi

  return 1
}

ask() {
  echo -en "\x1B[1;35m==? $* \x1B[0m"
  read -r

  if [ -z "$REPLY" ]; then
    ask "$*"
  fi
}

pause() {
  echo -en "\x1B[1;35m==? Press enter to continue...\x1B[0m"
  read -r
}
