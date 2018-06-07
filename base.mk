# Boot animation
TARGET_SCREEN_HEIGHT := 2280
TARGET_SCREEN_WIDTH := 1080

#Use a more decent APN config
PRODUCT_COPY_FILES += \
	device/sample/etc/apns-full-conf.xml:system/etc/apns-conf.xml

BOARD_PLAT_PRIVATE_SEPOLICY_DIR += device/oneplus/oneplus6/sepolicy
DEVICE_PACKAGE_OVERLAYS += device/oneplus/oneplus6/overlay

$(call inherit-product, vendor/hardware_overlay/overlay.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/aosp_base_telephony.mk)

#VNDK config files
PRODUCT_COPY_FILES += \
	device/oneplus/oneplus6/vndk-detect:system/bin/vndk-detect \
	device/oneplus/oneplus6/vndk.rc:system/etc/init/vndk.rc \
	device/oneplus/oneplus6/ld.config.26.txt:system/etc/ld.config.26.txt \
	device/oneplus/oneplus6/ld.config.27.txt:system/etc/ld.config.27.txt \

#USB Audio
PRODUCT_COPY_FILES += \
	frameworks/av/services/audiopolicy/config/usb_audio_policy_configuration.xml:system/etc/usb_audio_policy_configuration.xml

# NFC:
#   Provide default libnfc-nci.conf file for devices that does not have one in
#   vendor/etc
PRODUCT_COPY_FILES += \
	device/oneplus/oneplus6/nfc/libnfc-nci.conf:system/etc/libnfc-nci.conf

PRODUCT_COPY_FILES += \
	device/oneplus/oneplus6/rw-system.sh:system/bin/rw-system.sh \
	device/oneplus/oneplus6/fixSPL/getSPL.arm:system/bin/getSPL

PRODUCT_COPY_FILES += \
	device/oneplus/oneplus6/empty:system/oneplus6/empty \
	device/oneplus/oneplus6/service-cleaner.sh:system/bin/service-cleaner.sh

PRODUCT_PACKAGES += \
	treble-environ-rc

PRODUCT_PACKAGES += \
	bootctl \
	vintf
