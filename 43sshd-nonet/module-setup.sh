#!/bin/bash

check() {
  require_binaries ip || return 1
  require_binaries sshd || return 1
  # only include module if in add_dracutmodules.conf, cmdline or revdep
  return 255
}

depends() {
  return 0
}

installkernel() {
  # XXX: replace eth0 with your ethernet device name
  instmods eth0
  # XXX: vbox ethernet driver (optional)
  #instmods vboxnet
  # XXX: vmware ethernet driver (optional)
  #instmods vmxnet3
}

install() {
  dracut_install -o ip
  dracut_install -o sshd
}
