android_device_ZTE_N986
=======================
This is ZTE N986 device tree for compiling with TWRP and OmniROM's source-code

ROM 1.0.x is using old MTK's partitions layout with 2 separate internal data partitions: /data & /sdcard

ROM 2.0.x is using new "datamedia" layout


extra recovery.fstab entries explanation
========================================
**EBR1 (& EBR2 in ROM 1.0.x)** ➔ Used for defining internal partitions sizes (usually backed-up for restoring internal partitions sizes after repartitioned with [MeteOS ROM Edit](https://docs.google.com/file/d/0B_zS9FTBJz8qX0FsRFVNZzFHZ1k))

**NVRAM** ➔ Hard-IMEI that extracted to /data/nvram when the devices first booting (Can be restored for GSM-GSM phone with some MTK proprietary app, unfortunately not for CDMA-GSM, like N986(D))

**SEC_RO** ➔ Somewhat related to NVRAM (usually your IMEI 2 became invalid if this partition corrupted/empty)

**LOGO** ➔ The initial boot logo you see when you powering your device, can be edited with [LogoBuilder](https://sites.google.com/site/kadanutilities/home/logobuilder-en)
