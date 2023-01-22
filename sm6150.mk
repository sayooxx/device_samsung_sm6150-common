#
# Copyright (C) 2023 The LineageOS Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/developer_gsi_keys.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/emulated_storage.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/updatable_apex.mk)
$(call inherit-product, frameworks/native/build/phone-xhdpi-6144-dalvik-heap.mk)

COMMON_PATH := device/samsung/sm6150-common

PRODUCT_BUILD_SUPER_PARTITION := false
PRODUCT_CHARACTERISTICS := nosdcard
PRODUCT_TARGET_VNDK_VERSION := 30
PRODUCT_USE_DYNAMIC_PARTITIONS := false

# AID/fs configs
PRODUCT_PACKAGES += \
    fs_config_files \

# Audio
PRODUCT_PACKAGES += \
    audio.a2dp.default \
    audio.primary.default \
    audio.r_submix.default \
    audio.usb.default \
    cplay \
    libaudioroute \
    libaudioutils \
    libtinyalsa \
    tinycap \
    tinymix \
    tinypcminfo \
    tinyplay \

PRODUCT_COPY_FILES += \
    $(COMMON_PATH)/rootdir/vendor/etc/dolby/dax-default.xml:$(TARGET_COPY_OUT_VENDOR)/etc/dolby/dax-default.xml \
    $(COMMON_PATH)/rootdir/vendor/etc/audio_effects.conf:$(TARGET_COPY_OUT_VENDOR)/etc/audio_effects.conf \
    $(COMMON_PATH)/rootdir/vendor/etc/audio_effects.xml:$(TARGET_COPY_OUT_VENDOR)/etc/audio_effects.xml \
    $(COMMON_PATH)/rootdir/vendor/etc/audio_effects_common.conf:$(TARGET_COPY_OUT_VENDOR)/etc/audio_effects_common.conf \
    $(COMMON_PATH)/rootdir/vendor/etc/audio_effects_sec.xml:$(TARGET_COPY_OUT_VENDOR)/etc/audio_effects_sec.xml \
    $(COMMON_PATH)/rootdir/vendor/etc/audio_io_policy.conf:$(TARGET_COPY_OUT_VENDOR)/etc/audio_io_policy.conf \
    $(COMMON_PATH)/rootdir/vendor/etc/audio_platform_info.xml:$(TARGET_COPY_OUT_VENDOR)/etc/audio_platform_info.xml \
    $(COMMON_PATH)/rootdir/vendor/etc/audio_platform_info_diff.xml:$(TARGET_COPY_OUT_VENDOR)/etc/audio_platform_info_diff.xml \
    $(COMMON_PATH)/rootdir/vendor/etc/audio_platform_info_intcodec.xml:$(TARGET_COPY_OUT_VENDOR)/etc/audio_platform_info_intcodec.xml \
    $(COMMON_PATH)/rootdir/vendor/etc/audio_platform_info_qrd.xml:$(TARGET_COPY_OUT_VENDOR)/etc/audio_platform_info_qrd.xml \
    $(COMMON_PATH)/rootdir/vendor/etc/audio_policy_configuration.xml:$(TARGET_COPY_OUT_VENDOR)/etc/audio_policy_configuration.xml \
    $(COMMON_PATH)/rootdir/vendor/etc/audio_policy_configuration_base.xml:$(TARGET_COPY_OUT_VENDOR)/etc/audio_policy_configuration_base.xml \
    $(COMMON_PATH)/rootdir/vendor/etc/audio_policy_volumes.xml:$(TARGET_COPY_OUT_VENDOR)/etc/audio_policy_volumes.xml \
    $(COMMON_PATH)/rootdir/vendor/etc/audio_tuning_mixer_tavil.txt:$(TARGET_COPY_OUT_VENDOR)/etc/audio_tuning_mixer_tavil.txt \
    $(COMMON_PATH)/rootdir/vendor/etc/dax3_media_codecs_dolby_audio.xml:$(TARGET_COPY_OUT_VENDOR)/etc/dax3_media_codecs_dolby_audio.xml \
    $(COMMON_PATH)/rootdir/vendor/etc/graphite_ipc_platform_info.xml:$(TARGET_COPY_OUT_VENDOR)/etc/graphite_ipc_platform_info.xml \
    $(COMMON_PATH)/rootdir/vendor/etc/listen_platform_info.xml:$(TARGET_COPY_OUT_VENDOR)/etc/listen_platform_info.xml \
    $(COMMON_PATH)/rootdir/vendor/etc/mixer_paths_idp.xml:$(TARGET_COPY_OUT_VENDOR)/etc/mixer_paths_idp.xml \
    $(COMMON_PATH)/rootdir/vendor/etc/mixer_paths_qrd.xml:$(TARGET_COPY_OUT_VENDOR)/etc/mixer_paths_qrd.xml \
    $(COMMON_PATH)/rootdir/vendor/etc/mixer_paths_tavil.xml:$(TARGET_COPY_OUT_VENDOR)/etc/mixer_paths_tavil.xml \
    $(COMMON_PATH)/rootdir/vendor/etc/mixer_paths_wcd9375.xml:$(TARGET_COPY_OUT_VENDOR)/etc/mixer_paths_wcd9375.xml \
    $(COMMON_PATH)/rootdir/vendor/etc/mixer_paths_wcd9375qrd.xml:$(TARGET_COPY_OUT_VENDOR)/etc/mixer_paths_wcd9375qrd.xml \
    $(COMMON_PATH)/rootdir/vendor/etc/mixer_usb_default.xml:$(TARGET_COPY_OUT_VENDOR)/etc/mixer_usb_default.xml \
    $(COMMON_PATH)/rootdir/vendor/etc/mixer_usb_gray.xml:$(TARGET_COPY_OUT_VENDOR)/etc/mixer_usb_gray.xml \
    $(COMMON_PATH)/rootdir/vendor/etc/playback_record_audio_policy_configuration.xml:$(TARGET_COPY_OUT_VENDOR)/etc/playback_record_audio_policy_configuration.xml \
    $(COMMON_PATH)/rootdir/vendor/etc/sound_trigger_mixer_paths.xml:$(TARGET_COPY_OUT_VENDOR)/etc/sound_trigger_mixer_paths.xml \
    $(COMMON_PATH)/rootdir/vendor/etc/sound_trigger_mixer_paths_qrd.xml:$(TARGET_COPY_OUT_VENDOR)/etc/sound_trigger_mixer_paths_qrd.xml \
    $(COMMON_PATH)/rootdir/vendor/etc/sound_trigger_mixer_paths_wcd9340.xml:$(TARGET_COPY_OUT_VENDOR)/etc/sound_trigger_mixer_paths_wcd9340.xml \
    $(COMMON_PATH)/rootdir/vendor/etc/sound_trigger_platform_info.xml:$(TARGET_COPY_OUT_VENDOR)/etc/sound_trigger_platform_info.xml \
    $(COMMON_PATH)/rootdir/vendor/etc/system_properties.xml:$(TARGET_COPY_OUT_VENDOR)/etc/system_properties.xml \

PRODUCT_COPY_FILES += \
    frameworks/av/services/audiopolicy/config/a2dp_audio_policy_configuration.xml:$(TARGET_COPY_OUT_VENDOR)/etc/a2dp_audio_policy_configuration.xml \
    frameworks/av/services/audiopolicy/config/a2dp_in_audio_policy_configuration.xml:$(TARGET_COPY_OUT_VENDOR)/etc/a2dp_in_audio_policy_configuration.xml \
    frameworks/av/services/audiopolicy/config/bluetooth_audio_policy_configuration.xml:$(TARGET_COPY_OUT_VENDOR)/etc/bluetooth_audio_policy_configuration.xml \
    frameworks/av/services/audiopolicy/config/default_volume_tables.xml:$(TARGET_COPY_OUT_VENDOR)/etc/default_volume_tables.xml \
    frameworks/av/services/audiopolicy/config/hearing_aid_audio_policy_configuration.xml:$(TARGET_COPY_OUT_VENDOR)/etc/hearing_aid_audio_policy_configuration.xml \
    frameworks/av/services/audiopolicy/config/r_submix_audio_policy_configuration.xml:$(TARGET_COPY_OUT_VENDOR)/etc/r_submix_audio_policy_configuration.xml \
    frameworks/av/services/audiopolicy/config/usb_audio_policy_configuration.xml:$(TARGET_COPY_OUT_VENDOR)/etc/usb_audio_policy_configuration.xml \

# Bluetooth
PRODUCT_PACKAGES += \
    android.hardware.bluetooth@1.0 \

# Camera
PRODUCT_PACKAGES += \
    android.hardware.camera.provider@2.4-legacy \
    android.hardware.camera.provider@2.5-legacy \
    camera.device@1.0-impl \
    camera.device@3.2-impl \
    camera.device@3.3-impl \
    camera.device@3.4-impl \
    camera.device@3.5-impl \

# Charger
PRODUCT_PACKAGES += \
    libsuspend \

# DRM
PRODUCT_PACKAGES += \
    android.hardware.drm@1.0-impl \
    android.hardware.drm@1.0-service \
    android.hardware.drm@1.3 \
    android.hardware.drm@1.3.vendor \

# FM
PRODUCT_PACKAGES += \
    android.hardware.broadcastradio@1.0-impl \
    android.hardware.broadcastradio@1.0-service \

PRODUCT_PACKAGES += \
    FM2 \
    libqcomfm_jni \
    qcom.fmradio \
    qcom.fmradio.xml \

# Gatekeeper
PRODUCT_PACKAGES += \
    android.hardware.gatekeeper@1.0-impl \
    android.hardware.gatekeeper@1.0-service \

PRODUCT_PROPERTY_OVERRIDES += \
    ro.hardware.gatekeeper=mdfpp \

# GNSS/GPS
PRODUCT_PACKAGES += \
    android.hardware.gnss@1.0 \
    android.hardware.gnss@1.1 \
    android.hardware.gnss@2.0 \
    android.hardware.gnss@2.1 \

PRODUCT_COPY_FILES += \
    $(COMMON_PATH)/rootdir/vendor/etc/floating_feature.xml:$(TARGET_COPY_OUT_VENDOR)/etc/floating_feature.xml \
    $(COMMON_PATH)/rootdir/vendor/etc/flp.conf:$(TARGET_COPY_OUT_VENDOR)/etc/flp.conf \
    $(COMMON_PATH)/rootdir/vendor/etc/gnss_antenna_info.conf:$(TARGET_COPY_OUT_VENDOR)/etc/gnss_antenna_info.conf \
    $(COMMON_PATH)/rootdir/vendor/etc/gpfspath_oem_config.xml:$(TARGET_COPY_OUT_VENDOR)/etc/gpfspath_oem_config.xml \
    $(COMMON_PATH)/rootdir/vendor/etc/gps.conf:$(TARGET_COPY_OUT_VENDOR)/etc/gps.conf \
    $(COMMON_PATH)/rootdir/vendor/etc/izat.conf:$(TARGET_COPY_OUT_VENDOR)/etc/izat.conf \
    $(COMMON_PATH)/rootdir/vendor/etc/lowi.conf:$(TARGET_COPY_OUT_VENDOR)/etc/lowi.conf \
    $(COMMON_PATH)/rootdir/vendor/etc/sap.conf:$(TARGET_COPY_OUT_VENDOR)/etc/sap.conf \

# Graphics
PRODUCT_PACKAGES += \
    libion \
    libvulkan \
    vendor.display.color@1.0 \
    vendor.display.color@1.1 \
    vendor.display.color@1.2 \
    vendor.display.color@1.3 \
    vendor.display.config@1.0 \
    vendor.display.config@1.1 \
    vendor.display.config@1.2 \
    vendor.display.config@1.3 \
    vendor.display.config@1.4 \
    vendor.display.config@1.5 \
    vendor.display.config@2.0 \
    vendor.display.postproc@1.0 \

# Health
PRODUCT_PACKAGES += \
    android.hardware.health@2.1-impl \
    android.hardware.health@2.1-service \

# Keymaster
PRODUCT_PACKAGES += \
    android.hardware.keymaster@4.0-service.samsung \
    libskeymaster4device.vendor:64 \
    libkeymaster4support.vendor:64 \
    libkeymaster4_1support.vendor:64 \

PRODUCT_PROPERTY_OVERRIDES += \
    ro.hardware.keystore=mdfpp \
    ro.security.keystore.keytype=sakv2,gak \

# Keylayout
PRODUCT_COPY_FILES += \
    $(COMMON_PATH)/rootdir/vendor/usr/keylayout/gpio-keys.kl:$(TARGET_COPY_OUT_VENDOR)/usr/keylayout/gpio-keys.kl \

# Media
PRODUCT_COPY_FILES += \
    $(COMMON_PATH)/rootdir/vendor/etc/media_codecs.xml:$(TARGET_COPY_OUT_VENDOR)/etc/media_codecs.xml \
    $(COMMON_PATH)/rootdir/vendor/etc/media_codecs_ac4.xml:$(TARGET_COPY_OUT_VENDOR)/etc/media_codecs_ac4.xml \
    $(COMMON_PATH)/rootdir/vendor/etc/media_codecs_c2.xml:$(TARGET_COPY_OUT_VENDOR)/etc/media_codecs_c2.xml \
    $(COMMON_PATH)/rootdir/vendor/etc/media_codecs_c2_sec.xml:$(TARGET_COPY_OUT_VENDOR)/etc/media_codecs_c2_sec.xml \
    $(COMMON_PATH)/rootdir/vendor/etc/media_codecs_c2_sec_ape.xml:$(TARGET_COPY_OUT_VENDOR)/etc/media_codecs_c2_sec_ape.xml \
    $(COMMON_PATH)/rootdir/vendor/etc/media_codecs_c2_sec_qcp.xml:$(TARGET_COPY_OUT_VENDOR)/etc/media_codecs_c2_sec_qcp.xml \
    $(COMMON_PATH)/rootdir/vendor/etc/media_codecs_c2_sec_wmx.xml:$(TARGET_COPY_OUT_VENDOR)/etc/media_codecs_c2_sec_wmx.xml \
    $(COMMON_PATH)/rootdir/vendor/etc/media_codecs_ddp.xml:$(TARGET_COPY_OUT_VENDOR)/etc/media_codecs_ddp.xml \
    $(COMMON_PATH)/rootdir/vendor/etc/media_codecs_dolby_audio.xml:$(TARGET_COPY_OUT_VENDOR)/etc/media_codecs_dolby_audio.xml \
    $(COMMON_PATH)/rootdir/vendor/etc/media_codecs_performance.xml:$(TARGET_COPY_OUT_VENDOR)/etc/media_codecs_performance.xml \
    $(COMMON_PATH)/rootdir/vendor/etc/media_codecs_performance_v1.xml:$(TARGET_COPY_OUT_VENDOR)/etc/media_codecs_performance_v1.xml \
    $(COMMON_PATH)/rootdir/vendor/etc/media_codecs_performance_v2.xml:$(TARGET_COPY_OUT_VENDOR)/etc/media_codecs_performance_v2.xml \
    $(COMMON_PATH)/rootdir/vendor/etc/media_codecs_sec_ape.xml:$(TARGET_COPY_OUT_VENDOR)/etc/media_codecs_sec_ape.xml \
    $(COMMON_PATH)/rootdir/vendor/etc/media_codecs_sec_primary.xml:$(TARGET_COPY_OUT_VENDOR)/etc/media_codecs_sec_primary.xml \
    $(COMMON_PATH)/rootdir/vendor/etc/media_codecs_sec_qcp.xml:$(TARGET_COPY_OUT_VENDOR)/etc/media_codecs_sec_qcp.xml \
    $(COMMON_PATH)/rootdir/vendor/etc/media_codecs_sec_video_primary.xml:$(TARGET_COPY_OUT_VENDOR)/etc/media_codecs_sec_video_primary.xml \
    $(COMMON_PATH)/rootdir/vendor/etc/media_codecs_v1.xml:$(TARGET_COPY_OUT_VENDOR)/etc/media_codecs_v1.xml \
    $(COMMON_PATH)/rootdir/vendor/etc/media_codecs_v2.xml:$(TARGET_COPY_OUT_VENDOR)/etc/media_codecs_v2.xml \
    $(COMMON_PATH)/rootdir/vendor/etc/media_codecs_vendor.xml:$(TARGET_COPY_OUT_VENDOR)/etc/media_codecs_vendor.xml \
    $(COMMON_PATH)/rootdir/vendor/etc/media_codecs_vendor_audio.xml:$(TARGET_COPY_OUT_VENDOR)/etc/media_codecs_vendor_audio.xml \
    $(COMMON_PATH)/rootdir/vendor/etc/media_codecs_vendor_v1.xml:$(TARGET_COPY_OUT_VENDOR)/etc/media_codecs_vendor_v1.xml \
    $(COMMON_PATH)/rootdir/vendor/etc/media_codecs_vendor_v2.xml:$(TARGET_COPY_OUT_VENDOR)/etc/media_codecs_vendor_v2.xml \
    $(COMMON_PATH)/rootdir/vendor/etc/media_profiles.xml:$(TARGET_COPY_OUT_VENDOR)/etc/media_profiles.xml \
    $(COMMON_PATH)/rootdir/vendor/etc/media_profiles_V1_0.xml:$(TARGET_COPY_OUT_VENDOR)/etc/media_profiles_V1_0.xml \
    $(COMMON_PATH)/rootdir/vendor/etc/media_profiles_vendor.xml:$(TARGET_COPY_OUT_VENDOR)/etc/media_profiles_vendor.xml \

PRODUCT_COPY_FILES += \
    frameworks/av/media/libstagefright/data/media_codecs_google_audio.xml:$(TARGET_COPY_OUT_VENDOR)/etc/media_codecs_google_audio.xml \
    frameworks/av/media/libstagefright/data/media_codecs_google_c2.xml:$(TARGET_COPY_OUT_VENDOR)/etc/media_codecs_google_c2.xml \
    frameworks/av/media/libstagefright/data/media_codecs_google_c2_audio.xml:$(TARGET_COPY_OUT_VENDOR)/etc/media_codecs_google_c2_audio.xml \
    frameworks/av/media/libstagefright/data/media_codecs_google_c2_video.xml:$(TARGET_COPY_OUT_VENDOR)/etc/media_codecs_google_c2_video.xml \
    frameworks/av/media/libstagefright/data/media_codecs_google_telephony.xml:$(TARGET_COPY_OUT_VENDOR)/etc/media_codecs_google_telephony.xml \
    frameworks/av/media/libstagefright/data/media_codecs_google_video.xml:$(TARGET_COPY_OUT_VENDOR)/etc/media_codecs_google_video.xml \
    frameworks/av/media/libstagefright/data/media_codecs_google_video_le.xml:$(TARGET_COPY_OUT_VENDOR)/etc/media_codecs_google_video_le.xml \

# Memtrack
PRODUCT_PACKAGES += \
    android.hardware.memtrack@1.0-impl \
    android.hardware.memtrack@1.0-service \

# NFC
PRODUCT_COPY_FILES += \
    $(COMMON_PATH)/rootdir/vendor/etc/nfc/libnfc-nxp_RF.conf:$(TARGET_COPY_OUT_VENDOR)/etc/nfc/libnfc-nxp_RF.conf \
    $(COMMON_PATH)/rootdir/vendor/etc/libnfc-mtp-SN100.conf:$(TARGET_COPY_OUT_VENDOR)/etc/libnfc-mtp-SN100.conf \
    $(COMMON_PATH)/rootdir/vendor/etc/libnfc-mtp-SN100_38_4MHZ.conf:$(TARGET_COPY_OUT_VENDOR)/etc/libnfc-mtp-SN100_38_4MHZ.conf \
    $(COMMON_PATH)/rootdir/vendor/etc/libnfc-nci.conf:$(TARGET_COPY_OUT_VENDOR)/etc/libnfc-nci.conf \
    $(COMMON_PATH)/rootdir/vendor/etc/libnfc-nxp.conf:$(TARGET_COPY_OUT_VENDOR)/etc/libnfc-nxp.conf \
    $(COMMON_PATH)/rootdir/vendor/etc/libnfc-nxp_RF.conf:$(TARGET_COPY_OUT_VENDOR)/etc/libnfc-nxp_RF.conf \
    $(COMMON_PATH)/rootdir/vendor/etc/libnfc-qrd-SN100.conf:$(TARGET_COPY_OUT_VENDOR)/etc/libnfc-qrd-SN100.conf \
    $(COMMON_PATH)/rootdir/vendor/etc/libnfc-qrd-SN100_38_4MHZ.conf:$(TARGET_COPY_OUT_VENDOR)/etc/libnfc-qrd-SN100_38_4MHZ.conf \

# Overlays
PRODUCT_ENFORCE_RRO_TARGETS := *

PRODUCT_PACKAGE_OVERLAYS += \
    $(COMMON_PATH)/overlay \

# Performance
PRODUCT_COPY_FILES += \
    $(COMMON_PATH)/rootdir/vendor/etc/perf/commonresourceconfigs.xml:$(TARGET_COPY_OUT_VENDOR)/etc/perf/commonresourceconfigs.xml \
    $(COMMON_PATH)/rootdir/vendor/etc/perf/perfboostsconfig.xml:$(TARGET_COPY_OUT_VENDOR)/etc/perf/perfboostsconfig.xml \
    $(COMMON_PATH)/rootdir/vendor/etc/perf/perfconfigstore.xml:$(TARGET_COPY_OUT_VENDOR)/etc/perf/perfconfigstore.xml \
    $(COMMON_PATH)/rootdir/vendor/etc/perf/targetconfig.xml:$(TARGET_COPY_OUT_VENDOR)/etc/perf/targetconfig.xml \
    $(COMMON_PATH)/rootdir/vendor/etc/perf/targetresourceconfigs.xml:$(TARGET_COPY_OUT_VENDOR)/etc/perf/targetresourceconfigs.xml \

# Power
PRODUCT_COPY_FILES += \
    $(COMMON_PATH)/rootdir/vendor/etc/powerhint.xml:$(TARGET_COPY_OUT_VENDOR)/etc/powerhint.xml \

# Public Libraries
PRODUCT_COPY_FILES += \
    $(COMMON_PATH)/rootdir/vendor/etc/public.libraries.txt:$(TARGET_COPY_OUT_VENDOR)/etc/public.libraries.txt \

# QTI
PRODUCT_COPY_FILES += \
    $(COMMON_PATH)/rootdir/etc/permissions/privapp-permissions-qti.xml:$(TARGET_COPY_OUT_SYSTEM)/etc/permissions/privapp-permissions-qti.xml \
    $(COMMON_PATH)/rootdir/etc/sysconfig/qti_whitelist.xml:$(TARGET_COPY_OUT_SYSTEM)/etc/sysconfig/qti_whitelist.xml \
    $(COMMON_PATH)/rootdir/vendor/etc/secnvm/k250a_00000200.img:$(TARGET_COPY_OUT_VENDOR)/etc/secnvm/k250a_00000200.img \
    $(COMMON_PATH)/rootdir/vendor/etc/ssg/ta_config.json:$(TARGET_COPY_OUT_VENDOR)/etc/ssg/ta_config.json \
    $(COMMON_PATH)/rootdir/vendor/etc/ssg/tz_whitelist.json:$(TARGET_COPY_OUT_VENDOR)/etc/ssg/tz_whitelist.json \
    $(COMMON_PATH)/rootdir/vendor/etc/str/str_preference_data.dat:$(TARGET_COPY_OUT_VENDOR)/etc/str/str_preference_data.dat \
    $(COMMON_PATH)/rootdir/vendor/etc/btcon.json:$(TARGET_COPY_OUT_VENDOR)/etc/btcon.json \
    $(COMMON_PATH)/rootdir/vendor/etc/config_chipset.json:$(TARGET_COPY_OUT_VENDOR)/etc/config_chipset.json \
    $(COMMON_PATH)/rootdir/vendor/etc/config_vendor.json:$(TARGET_COPY_OUT_VENDOR)/etc/config_vendor.json \
    $(COMMON_PATH)/rootdir/vendor/etc/msm_irqbalance.conf:$(TARGET_COPY_OUT_VENDOR)/etc/msm_irqbalance.conf \
    $(COMMON_PATH)/rootdir/vendor/etc/sec_config:$(TARGET_COPY_OUT_VENDOR)/etc/sec_config \
    $(COMMON_PATH)/rootdir/vendor/etc/sec_config_oem:$(TARGET_COPY_OUT_VENDOR)/etc/sec_config_oem \
    $(COMMON_PATH)/rootdir/vendor/etc/snap_gpu_kernel_64.bin:$(TARGET_COPY_OUT_VENDOR)/etc/snap_gpu_kernel_64.bin \

# Ramdisk
PRODUCT_PACKAGES += \
    fstab.qcom \
    init.nfc.samsung.rc \
    init.qcom.factory.rc \
    init.qcom.rc \
    init.qcom.usb.rc \
    init.qti.qcv.rc \
    init.qti.ufs.rc \
    init.samsung.bsp.rc \
    init.samsung.display.rc \
    init.samsung.rc \
    init.target.rc \
    init.vendor.onebinary.rc \
    init.vendor.rilchip.rc \
    init.vendor.rilcommon.rc \
    init.vendor.sensors.rc \
    init.vendor.sysfw.rc \
    ueventd.qcom.rc \
    vendor.qti.rmt_storage.rc \
    vendor.qti.tftp.rc \
    wifi_qcom.rc \
    wifi_sec.rc \
    init.class_main.sh \
    init.crda.sh \
    init.mdm.sh \
    init.qcom.class_core.sh \
    init.qcom.coex.sh \
    init.qcom.early_boot.sh \
    init.qcom.efs.sync.sh \
    init.qcom.post_boot.sh \
    init.qcom.sdio.sh \
    init.qcom.sensors.sh \
    init.qcom.sh \
    init.qcom.usb.sh \
    init.qti.chg_policy.sh \
    init.qti.dcvs.sh \
    init.qti.qcv.sh \
    qca6234-service.sh \

# Recovery
AB_OTA_UPDATER := false

PRODUCT_PACKAGES += \
    init.recovery.qcom.rc \

# RIL
PRODUCT_PACKAGES += \
    android.hardware.radio@1.5 \
    android.hardware.radio.config@1.2 \
    libxml2 \

# Seccomp
PRODUCT_COPY_FILES += \
    $(COMMON_PATH)/rootdir/vendor/etc/seccomp_policy/atfwd@2.0.policy:$(TARGET_COPY_OUT_VENDOR)/etc/seccomp_policy/atfwd@2.0.policy \
    $(COMMON_PATH)/rootdir/vendor/etc/seccomp_policy/codec2.vendor.base.policy:$(TARGET_COPY_OUT_VENDOR)/etc/seccomp_policy/codec2.vendor.base.policy \
    $(COMMON_PATH)/rootdir/vendor/etc/seccomp_policy/codec2.vendor.ext.policy:$(TARGET_COPY_OUT_VENDOR)/etc/seccomp_policy/codec2.vendor.ext.policy \
    $(COMMON_PATH)/rootdir/vendor/etc/seccomp_policy/configstore@1.1.policy:$(TARGET_COPY_OUT_VENDOR)/etc/seccomp_policy/configstore@1.1.policy \
    $(COMMON_PATH)/rootdir/vendor/etc/seccomp_policy/mediacodec.policy:$(TARGET_COPY_OUT_VENDOR)/etc/seccomp_policy/mediacodec.policy \
    $(COMMON_PATH)/rootdir/vendor/etc/seccomp_policy/mediaextractor_sec.policy:$(TARGET_COPY_OUT_VENDOR)/etc/seccomp_policy/mediaextractor_sec.policy \
    $(COMMON_PATH)/rootdir/vendor/etc/seccomp_policy/vendor.qti.hardware.dsp.policy:$(TARGET_COPY_OUT_VENDOR)/etc/seccomp_policy/vendor.qti.hardware.dsp.policy \

# Sensors
PRODUCT_COPY_FILES += \
    $(COMMON_PATH)/rootdir/etc/permissions/com.samsung.permission.SSENSOR.xml:$(TARGET_COPY_OUT_SYSTEM)/etc/permissions/com.samsung.permission.SSENSOR.xml \
    $(COMMON_PATH)/rootdir/vendor/etc/sensors/hals.conf:$(TARGET_COPY_OUT_VENDOR)/etc/sensors/hals.conf \
    $(COMMON_PATH)/rootdir/vendor/etc/sensors/sns_reg_config:$(TARGET_COPY_OUT_VENDOR)/etc/sensors/sns_reg_config \

# Soong Namespaces
PRODUCT_SOONG_NAMESPACES += \
    $(COMMON_PATH) \

# WiFi
PRODUCT_COPY_FILES += \
    $(COMMON_PATH)/rootdir/vendor/etc/wifi/icm.conf:$(TARGET_COPY_OUT_VENDOR)/etc/wifi/icm.conf \
    $(COMMON_PATH)/rootdir/vendor/etc/wifi/indoorchannel.info:$(TARGET_COPY_OUT_VENDOR)/etc/wifi/indoorchannel.info \
    $(COMMON_PATH)/rootdir/vendor/etc/wifi/p2p_supplicant_overlay.conf:$(TARGET_COPY_OUT_VENDOR)/etc/wifi/p2p_supplicant_overlay.conf \
    $(COMMON_PATH)/rootdir/vendor/etc/wifi/WCNSS_qcom_cfg.ini:$(TARGET_COPY_OUT_VENDOR)/etc/wifi/WCNSS_qcom_cfg.ini \
    $(COMMON_PATH)/rootdir/vendor/etc/wifi/wpa_supplicant.conf:$(TARGET_COPY_OUT_VENDOR)/etc/wifi/wpa_supplicant.conf \
    $(COMMON_PATH)/rootdir/vendor/etc/wifi/wpa_supplicant_overlay.conf:$(TARGET_COPY_OUT_VENDOR)/etc/wifi/wpa_supplicant_overlay.conf \

# Get non-open-source specific aspects
$(call inherit-product, vendor/samsung/sm6150-common/sm6150-common-vendor.mk)
