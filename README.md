# gentoo-tospio
Gentoo TOSPIO overlay

The ONLY official Gentoo overlay from TOSPIO.

## How to use
We have no plan to add it to ``overlays.gentoo.org`` yet. So you can't use ``layman -a``.
Instead, you'll have to do the following:
```bash
$ mkdir -p /usr/local/overlay && git clone https://github.com/TOSPIO/gentoo-tospio.git /usr/local/overlay
$ mkdir -p /etc/portage/repos.conf
```
Open the file ``/etc/portage/repos.conf/gentoo-tospio.conf`` with your favorite editor and paste the following in:
```bash
[gentoo-tospio]
priority = 90
location = /usr/local/overlay/gentoo-tospio
masters = gentoo
auto-sync = no
```

That's it! Sync your repo with anything you used to, e.g. ``eix-sync``. Have fun :)
