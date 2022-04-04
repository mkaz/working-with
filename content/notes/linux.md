+++
title = "Linux Snippets"
weight = 10
+++

### Create a Bootable USB

Create a bootable USB from a ISO file.

```
hdiutil convert -format UDRW -o new.img ubuntu.iso
diskutil list
diskutil unmountDisk /dev/disk2
sudo dd if=new.img.dmg of=/dev/rdiskN bs=1m
diskutil eject /dev/disk2
```

### NOPASSWD in Sudo

I can never keep track of the ALLs.

```
mkaz ALL=(ALL) NOPASSWD:ALL
```