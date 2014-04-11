    LOCAL_PATH := $(call my-dir)

    REPACK-MT65XX := device/ZTE/N986/tools/repack-MT65xx.pl
    INSTALLED_BOOTIMAGE_TARGET := $(PRODUCT_OUT)/boot.img
    $(INSTALLED_BOOTIMAGE_TARGET): $(PRODUCT_OUT)/kernel $(INSTALLED_RAMDISK_TARGET) $(MKBOOTIMG) $(MINIGZIP) $(INTERNAL_BOOTIMAGE_FILES)
			$(hide) perl $(REPACK-MT65XX) -boot $(PRODUCT_OUT)/kernel $(PRODUCT_OUT)/root $(PRODUCT_OUT)/boot.img

    INSTALLED_RECOVERYIMAGE_TARGET := $(PRODUCT_OUT)/recovery.img
    $(INSTALLED_RECOVERYIMAGE_TARGET): $(MKBOOTIMG) $(recovery_ramdisk) $(recovery_kernel)
			$(hide) perl $(REPACK-MT65XX) -recovery $(PRODUCT_OUT)/kernel $(PRODUCT_OUT)/recovery/root $(PRODUCT_OUT)/recovery.img
