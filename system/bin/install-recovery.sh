#!/system/bin/sh
if ! applypatch -c EMMC:/dev/block/platform/bootdevice/by-name/recovery:11484048:4165730d4dd1a14ac7b965a44d5b04db86b47afd; then
  applypatch -b /system/etc/recovery-resource.dat EMMC:/dev/block/platform/bootdevice/by-name/boot:9487248:fbd59cfc1139e89a8e82f2cb20e4ee4c34237b5c EMMC:/dev/block/platform/bootdevice/by-name/recovery 4165730d4dd1a14ac7b965a44d5b04db86b47afd 11484048 fbd59cfc1139e89a8e82f2cb20e4ee4c34237b5c:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
