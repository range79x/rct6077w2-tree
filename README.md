# TWRP Device Tree — RCA RCT6077W2

[![Build TWRP](https://github.com/range79x/rct6077w2-tree/actions/workflows/twrp.yml/badge.svg)](https://github.com/range79x/rct6077w2-tree/actions/workflows/twrp.yml)

**Device:** RCA RCT6077W2 | **SoC:** Rockchip RK3026 | **Android:** 4.4.2 KitKat

## Flash

> [!WARNING]
> Stock recovery will reject the flashable ZIP because it is not signed. Do **not** try to flash `TWRP_RCT6077W2.zip` via the stock recovery menu ("Apply update from ADB/external storage").

Download `recovery.img` from [Releases](../../releases) and flash it directly to the partition:

### 1. via `rkdeveloptool` (Linux)
Put the device in **Loader Mode** (hold Vol+ + USB) and run:
```bash
# Flash to both recovery (0x10000) and backup (0x20000) to bypass restoration
sudo rkdeveloptool wl 0x10000 recovery.img
sudo rkdeveloptool wl 0x20000 recovery.img
sudo rkdeveloptool rd
```

### 2. via Rooted Shell (Android)
If the device is already rooted:
```bash
# Flash to both partitions and boot straight to recovery
adb push recovery.img /sdcard/recovery.img
adb shell
su
dd if=/sdcard/recovery.img of=/dev/block/mtdblock3 bs=4096
dd if=/sdcard/recovery.img of=/dev/block/mtdblock4 bs=4096
reboot recovery
```

> Recovery partition: `mtd3` → `/dev/mtd3` (NAND, 32 MB)
