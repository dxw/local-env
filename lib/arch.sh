#!/bin/bash

macos() {
  [ "$(uname -s)" = "Darwin" ]
}

arm64() {
  [ "$(uname -m)" = "arm64" ]
}

m1() {
  macos && (arm64 || [ "$(sysctl -in sysctl.proc_translated)" = "1" ])
}
