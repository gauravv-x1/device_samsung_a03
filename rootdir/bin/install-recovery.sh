#!/vendor/bin/sh
if ! applypatch --check EMMC:/dev/block/by-name/recovery$(getprop ro.boot.slot_suffix):67108864:fce6ee56ebed6abdcca07e065a96cd12dd7cdca2; then
  applypatch \
          --patch /vendor/recovery-from-boot.p \
          --source EMMC:/dev/block/by-name/boot$(getprop ro.boot.slot_suffix):67108864:a29dde1be2fe54b87c54ec851692ff33db1fb4b2 \
          --target EMMC:/dev/block/by-name/recovery$(getprop ro.boot.slot_suffix):67108864:fce6ee56ebed6abdcca07e065a96cd12dd7cdca2 && \
      (/vendor/bin/log -t install_recovery "Installing new recovery image: succeeded" && setprop vendor.ota.recovery.status 200) || \
      (/vendor/bin/log -t install_recovery "Installing new recovery image: failed" && setprop vendor.ota.recovery.status 454)
else
  /vendor/bin/log -t install_recovery "Recovery image already installed" && setprop vendor.ota.recovery.status 200
fi

