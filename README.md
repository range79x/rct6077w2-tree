# TWRP Device Tree — RCA RCT6077W2

[![Build TWRP](https://github.com/range79x/rct6077w2-tree/actions/workflows/twrp.yml/badge.svg)](https://github.com/range79x/rct6077w2-tree/actions/workflows/twrp.yml)

**Device:** RCA RCT6077W2 | **SoC:** Rockchip RK3026 | **Android:** 4.4.2 KitKat

## Flash

Download `recovery.img` or `TWRP_RCT6077W2.zip` from [Releases](../../releases).

```bash
# via ADB
adb push recovery.img /sdcard/recovery.img
adb shell flash_image recovery /sdcard/recovery.img
```

Or use **RKAndroidTool** (Windows) in loader mode (hold Vol+ + USB).

> Recovery partition: `mtd3` → `/dev/mtd3` (NAND, 32 MB)
