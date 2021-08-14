#!/bin/bash

arm64() {
  [ "$(uname -m)" = "arm64" ]
}

m1() {
  arm64 || [ "$(sysctl -in sysctl.proc_translated)" = "1" ]
}
