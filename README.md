dracut-sshd-nonet
=================

Make OpenSSH `sshd` available in early userspace only over 1-to-1
ethernet connection.


Description
-----------

[Dracut][Dracut] module for starting OpenSSH `sshd` in early userspace.
It enables unlocking a LUKS-encrypted root filesystem via an SSH client.

Unlike other early userspace ssh Dracut modules, *crypt-sshd-nonet* does
not attempt making a network connection. It only allows for directly
connecting an ethernet cable from the client to the server for the
purposes of entering the LUKS passphrase.


Resources
---------

- [Dracut: Developer Manual][Manual]
- [Dracut: Introduction and Overview][Presentation]
- [How to debug Dracut problems][Debug]
- [dracut.modules.7][dracut.modules.7]


See Also
--------

- [Disk encryption in CentOS6 with remote password entering][centos]
- [dracut-crypt-ssh/dracut-crypt-ssh][dracut-crypt-ssh/dracut-crypt-ssh]
- [gsauthof/dracut-sshd][gsauthof/dracut-sshd]
- [systemd/src/tty-ask-password-agent][systemd/src/tty-ask-password-agent]


Licensing
---------

This is free and unencumbered public domain software. For more
information, see http://unlicense.org/ or the accompanying UNLICENSE file.


[Debug]: https://fedoraproject.org/wiki/How_to_debug_Dracut_problems
[Dracut]: https://github.com/dracutdevs/dracut
[Manual]: https://www.kernel.org/pub/linux/utils/boot/dracut/dracut.html#_developer_manual
[Presentation]: https://events.static.linuxfound.org/images/stories/pdf/lcjp2012_cong_wang.pdf
[centos]: https://roosbertl.blogspot.com/2012/12/centos6-disk-encryption-with-remote.html
[dracut-crypt-ssh/dracut-crypt-ssh]: https://github.com/dracut-crypt-ssh/dracut-crypt-ssh
[dracut.modules.7]: http://man7.org/linux/man-pages/man7/dracut.modules.7.html
[gsauthof/dracut-sshd]: https://github.com/gsauthof/dracut-sshd
[systemd/src/tty-ask-password-agent]: https://github.com/systemd/systemd/tree/master/src/tty-ask-password-agent
