################# DEVICE SPECIFIC STUFF #####################
#
# Below are some things that make sure that the rom runs
# properly on sholes (droid) hardware
#

$(call inherit-product, device/common/gps/gps_us_supl.mk)

DEVICE_PACKAGE_OVERLAYS := device/motorola/sholes/overlay

PRODUCT_PROPERTY_OVERRIDES += \
	ro.com.android.wifi-watchlist=GoogleGuest \
	ro.error.receiver.system.apps=com.google.android.feedback \
	ro.setupwizard.enterprise_mode=1 \
	ro.com.google.clientidbase=android-verizon \
	ro.com.google.locationfeatures=1 \
	ro.url.legal=http://www.google.com/intl/%s/mobile/android/basic/phone-legal.html \
	ro.url.legal.android_privacy=http://www.google.com/intl/%s/mobile/android/basic/privacy.html \
	ro.cdma.home.operator.numeric=310004 \
	ro.cdma.home.operator.alpha=Verizon \
	ro.cdma.homesystem=64,65,76,77,78,79,80,81,82,83 \
	ro.cdma.data_retry_config=default_randomization=2000,0,0,120000,180000,540000,960000 \
	ro.config.vc_call_vol_steps=7 \
	ro.cdma.otaspnumschema=SELC,1,80,99 \
	ro.telephony.call_ring.multiple=false \
	ro.telephony.call_ring.delay=1000 \
	ro.url.safetylegal=http://www.motorola.com/staticfiles/Support/legal/?model=A855 \
	ro.setupwizard.enable_bypass=1 \
	ro.media.dec.jpeg.memcap=20000000 \
	dalvik.vm.lockprof.threshold=500 \
	dalvik.vm.dexopt-flags=m=y

# modules to include
PRODUCT_COPY_FILES += \
	device/motorola/sholes/kernel/ah6.ko:system/lib/modules/ah6.ko \
	device/motorola/sholes/kernel/cifs.ko:system/lib/modules/cifs.ko \
	device/motorola/sholes/kernel/esp6.ko:system/lib/modules/esp6.ko \
	device/motorola/sholes/kernel/exportfs.ko:system/lib/modules/exportfs.ko \
	device/motorola/sholes/kernel/ext2.ko:system/lib/modules/ext2.ko \
	device/motorola/sholes/kernel/ext3.ko:system/lib/modules/ext3.ko \
	device/motorola/sholes/kernel/ext4.ko:system/lib/modules/ext4.ko \
	device/motorola/sholes/kernel/fuse.ko:system/lib/modules/fuse.ko \
	device/motorola/sholes/kernel/ip6_tunnel.ko:system/lib/modules/ip6_tunnel.ko \
	device/motorola/sholes/kernel/ipcomp6.ko:system/lib/modules/ipcomp6.ko \
	device/motorola/sholes/kernel/ipv6.ko:system/lib/modules/ipv6.ko \
	device/motorola/sholes/kernel/jbd2.ko:system/lib/modules/jbd2.ko \
	device/motorola/sholes/kernel/jbd.ko:system/lib/modules/jbd.ko \
	device/motorola/sholes/kernel/lockd.ko:system/lib/modules/lockd.ko \
	device/motorola/sholes/kernel/mbcache.ko:system/lib/modules/mbcache.ko \
	device/motorola/sholes/kernel/mip6.ko:system/lib/modules/mip6.ko \
	device/motorola/sholes/kernel/nfs.ko:system/lib/modules/nfs.ko \
	device/motorola/sholes/kernel/ramzswap.ko:system/lib/modules/ramzswap.ko \
	device/motorola/sholes/kernel/sit.ko:system/lib/modules/sit.ko \
	device/motorola/sholes/kernel/squashfs.ko:system/lib/modules/squashfs.ko \
	device/motorola/sholes/kernel/sunrpc.ko:system/lib/modules/sunrpc.ko \
	device/motorola/sholes/kernel/tiwlan_drv.ko:system/lib/modules/tiwlan_drv.ko \
	device/motorola/sholes/kernel/tunnel4.ko:system/lib/modules/tunnel4.ko \
	device/motorola/sholes/kernel/ufs.ko:system/lib/modules/ufs.ko \
	device/motorola/sholes/kernel/xfrm6_mode_beet.ko:system/lib/modules/xfrm6_mode_beet.ko \
	device/motorola/sholes/kernel/xfrm6_mode_transport.ko:system/lib/modules/xfrm6_mode_transport.ko \
	device/motorola/sholes/kernel/xfrm6_mode_tunnel.ko:system/lib/modules/xfrm6_mode_tunnel.ko \
	device/motorola/sholes/kernel/xfrm_ipcomp.ko:system/lib/modules/xfrm_ipcomp.ko \
	device/motorola/sholes/kernel/xfs.ko:system/lib/modules/xfs.ko

PRODUCT_COPY_FILES += \
	frameworks/base/data/etc/handheld_core_hardware.xml:system/etc/permissions/handheld_core_hardware.xml \
	frameworks/base/data/etc/android.hardware.camera.flash-autofocus.xml:system/etc/permissions/android.hardware.camera.flash-autofocus.xml \
	frameworks/base/data/etc/android.hardware.telephony.gsm.xml:system/etc/permissions/android.hardware.telephony.gsm.xml \
	frameworks/base/data/etc/android.hardware.location.gps.xml:system/etc/permissions/android.hardware.location.gps.xml \
	frameworks/base/data/etc/android.hardware.wifi.xml:system/etc/permissions/android.hardware.wifi.xml \
	frameworks/base/data/etc/android.hardware.sensor.proximity.xml:system/etc/permissions/android.hardware.sensor.proximity.xml \
	frameworks/base/data/etc/android.hardware.sensor.light.xml:system/etc/permissions/android.hardware.sensor.light.xml \
	frameworks/base/data/etc/android.hardware.touchscreen.multitouch.distinct.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.distinct.xml

ifeq ($(USE_GOOGLE_PROPRIETARIES),true)
PRODUCT_COPY_FILES += \
	device/motorola/sholes/proprietary/CorpCal.apk:system/app/CorpCal.apk \
	device/motorola/sholes/proprietary/kickback.apk:system/app/kickback.apk \
	device/motorola/sholes/proprietary/Vending.apk:system/app/Vending.apk \
	device/motorola/sholes/proprietary/GoogleBackupTransport.apk:system/app/GoogleBackupTransport.apk \
	device/motorola/sholes/proprietary/VoiceSearch.apk:system/app/VoiceSearch.apk \
	device/motorola/sholes/proprietary/LatinImeTutorial.apk:system/app/LatinImeTutorial.apk \
	device/motorola/sholes/proprietary/MediaUploader.apk:system/app/MediaUploader.apk \
	device/motorola/sholes/proprietary/soundback.apk:system/app/soundback.apk \
	device/motorola/sholes/proprietary/MarketUpdater.apk:system/app/MarketUpdater.apk \
	device/motorola/sholes/proprietary/GoogleServicesFramework.apk:system/app/GoogleServicesFramework.apk \
	device/motorola/sholes/proprietary/GooglePartnerSetup.apk:system/app/GooglePartnerSetup.apk \
	device/motorola/sholes/proprietary/SholesQuickOffice.apk:system/app/SholesQuickOffice.apk \
	device/motorola/sholes/proprietary/GoogleContactsSyncAdapter.apk:system/app/GoogleContactsSyncAdapter.apk \
	device/motorola/sholes/proprietary/VVMStub.apk:system/app/VVMStub.apk \
	device/motorola/sholes/proprietary/Street.apk:system/app/Street.apk \
	device/motorola/sholes/proprietary/Talk.apk:system/app/Talk.apk \
	device/motorola/sholes/proprietary/ProgramMenuSystem.apk:system/app/ProgramMenuSystem.apk \
	device/motorola/sholes/proprietary/PhoneConfig.apk:system/app/PhoneConfig.apk \
	device/motorola/sholes/proprietary/Gmail.apk:system/app/Gmail.apk \
	device/motorola/sholes/proprietary/talkback.apk:system/app/talkback.apk \
	device/motorola/sholes/proprietary/com.amazon.mp3.apk:system/app/com.amazon.mp3.apk \
	device/motorola/sholes/proprietary/ProgramMenu.apk:system/app/ProgramMenu.apk \
	device/motorola/sholes/proprietary/GenieWidget.apk:system/app/GenieWidget.apk \
	device/motorola/sholes/proprietary/OneTimeInitializer.apk:system/app/OneTimeInitializer.apk \
	device/motorola/sholes/proprietary/DroidEmailPolicy.apk:system/app/DroidEmailPolicy.apk \
	device/motorola/sholes/proprietary/CertInstaller.apk:system/app/CertInstaller.apk \
	device/motorola/sholes/proprietary/SetupWizard.apk:system/app/SetupWizard.apk \
	device/motorola/sholes/proprietary/GoogleCalendarSyncAdapter.apk:system/app/GoogleCalendarSyncAdapter.apk \
	device/motorola/sholes/proprietary/NetworkLocation.apk:system/app/NetworkLocation.apk \
	device/motorola/sholes/proprietary/GoogleFeedback.apk:system/app/GoogleFeedback.apk \
	device/motorola/sholes/proprietary/GoogleQuickSearchBox.apk:system/app/GoogleQuickSearchBox.apk \
	device/motorola/sholes/proprietary/CarHomeLauncher.apk:system/app/CarHomeLauncher.apk \
	device/motorola/sholes/proprietary/CarHomeGoogle.apk:system/app/CarHomeGoogle.apk \
	device/motorola/sholes/proprietary/LatinImeGoogle.apk:system/app/LatinImeGoogle.apk \
	device/motorola/sholes/proprietary/YouTube.apk:system/app/YouTube.apk \
	device/motorola/sholes/proprietary/google_generic_update.txt:system/etc/updatecmds/google_generic_update.txt \
	device/motorola/sholes/proprietary/com.google.android.maps.xml:system/etc/permissions/com.google.android.maps.xml \
	device/motorola/sholes/proprietary/com.google.android.maps.jar:system/framework/com.google.android.maps.jar
endif

ifeq ($(USE_MOTOROLA_PROPRIETARIES),true)
PRODUCT_COPY_FILES += \
	device/motorola/sholes/proprietary/bthelp:system/bin/bthelp \
	device/motorola/sholes/proprietary/mdm_panicd:system/bin/mdm_panicd \
	device/motorola/sholes/proprietary/SaveBPVer:system/bin/SaveBPVer \
	device/motorola/sholes/proprietary/akmd2:system/bin/akmd2 \
	device/motorola/sholes/proprietary/battd:system/bin/battd \
	device/motorola/sholes/proprietary/chat-ril:system/bin/chat-ril \
	device/motorola/sholes/proprietary/tcmd:system/bin/tcmd \
	device/motorola/sholes/proprietary/ftmipcd:system/bin/ftmipcd \
	device/motorola/sholes/proprietary/pvrsrvinit:system/bin/pvrsrvinit \
	device/motorola/sholes/proprietary/ap_gain.bin:system/bin/ap_gain.bin \
	device/motorola/sholes/proprietary/pppd-ril:system/bin/pppd-ril \
	device/motorola/sholes/proprietary/sholes-keypad.kcm.bin:system/usr/keychars/sholes-keypad.kcm.bin \
	device/motorola/sholes/proprietary/cpcap-key.kl:system/usr/keylayout/cpcap-key.kl \
	device/motorola/sholes/proprietary/sholes-keypad.kl:system/usr/keylayout/sholes-keypad.kl \
	device/motorola/sholes/proprietary/pppd-ril.options:system/etc/ppp/peers/pppd-ril.options \
	device/motorola/sholes/proprietary/01_Vendor_ti_omx.cfg:system/etc/01_Vendor_ti_omx.cfg \
	device/motorola/sholes/proprietary/fw_wlan1271.bin:system/etc/wifi/fw_wlan1271.bin \
	device/motorola/sholes/proprietary/tiwlan.ini:system/etc/wifi/tiwlan.ini \
	device/motorola/sholes/proprietary/cacerts.bks:system/etc/security/cacerts.bks \
	device/motorola/sholes/proprietary/otacerts.zip:system/etc/security/otacerts.zip \
	device/motorola/sholes/proprietary/NOTICE.html.gz:system/etc/NOTICE.html.gz \
	device/motorola/sholes/proprietary/pvplayer_mot.cfg:system/etc/pvplayer_mot.cfg \
	device/motorola/sholes/proprietary/media_profiles.xml:system/etc/media_profiles.xml \
	device/motorola/sholes/proprietary/cameraCalFileDef.bin:system/etc/cameraCalFileDef.bin \
	device/motorola/sholes/proprietary/excluded-input-devices.xml:system/etc/excluded-input-devices.xml \
	device/motorola/sholes/proprietary/android.software.live_wallpaper.xml:system/etc/permissions/android.software.live_wallpaper.xml \
	device/motorola/sholes/proprietary/features.xml:system/etc/permissions/features.xml \
	device/motorola/sholes/proprietary/hosts:system/etc/hosts \
	device/motorola/sholes/proprietary/vold.fstab:system/etc/vold.fstab \
	device/motorola/sholes/proprietary/key_code_map.txt:system/etc/motorola/12m/key_code_map.txt \
	device/motorola/sholes/proprietary/wl1271.bin:system/etc/firmware/wl1271.bin \
	device/motorola/sholes/proprietary/contributors.css:system/etc/contributors.css \
	device/motorola/sholes/proprietary/mp4vdec_sn.dll64P:system/lib/dsp/mp4vdec_sn.dll64P \
	device/motorola/sholes/proprietary/ringio.dll64P:system/lib/dsp/ringio.dll64P \
	device/motorola/sholes/proprietary/wmv9dec_sn.dll64P:system/lib/dsp/wmv9dec_sn.dll64P \
	device/motorola/sholes/proprietary/nbamrenc_sn.dll64P:system/lib/dsp/nbamrenc_sn.dll64P \
	device/motorola/sholes/proprietary/usn.dll64P:system/lib/dsp/usn.dll64P \
	device/motorola/sholes/proprietary/nbamrdec_sn.dll64P:system/lib/dsp/nbamrdec_sn.dll64P \
	device/motorola/sholes/proprietary/wbamrenc_sn.dll64P:system/lib/dsp/wbamrenc_sn.dll64P \
	device/motorola/sholes/proprietary/h264venc_sn.dll64P:system/lib/dsp/h264venc_sn.dll64P \
	device/motorola/sholes/proprietary/mpeg4aacdec_sn.dll64P:system/lib/dsp/mpeg4aacdec_sn.dll64P \
	device/motorola/sholes/proprietary/m4venc_sn.dll64P:system/lib/dsp/m4venc_sn.dll64P \
	device/motorola/sholes/proprietary/h264vdec_sn.dll64P:system/lib/dsp/h264vdec_sn.dll64P \
	device/motorola/sholes/proprietary/wmadec_sn.dll64P:system/lib/dsp/wmadec_sn.dll64P \
	device/motorola/sholes/proprietary/baseimage.dof:system/lib/dsp/baseimage.dof \
	device/motorola/sholes/proprietary/mp3dec_sn.dll64P:system/lib/dsp/mp3dec_sn.dll64P \
	device/motorola/sholes/proprietary/jpegenc_sn.dll64P:system/lib/dsp/jpegenc_sn.dll64P \
	device/motorola/sholes/proprietary/postprocessor_dualout.dll64P:system/lib/dsp/postprocessor_dualout.dll64P \
	device/motorola/sholes/proprietary/wbamrdec_sn.dll64P:system/lib/dsp/wbamrdec_sn.dll64P \
	device/motorola/sholes/proprietary/mpeg4aacenc_sn.dll64P:system/lib/dsp/mpeg4aacenc_sn.dll64P \
	device/motorola/sholes/proprietary/conversions.dll64P:system/lib/dsp/conversions.dll64P \
	device/motorola/sholes/proprietary/libbattd.so:system/lib/libbattd.so \
	device/motorola/sholes/proprietary/libzxing.so:system/lib/libzxing.so \
	device/motorola/sholes/proprietary/libpvr2d.so:system/lib/libpvr2d.so \
	device/motorola/sholes/proprietary/zxing.so:system/lib/zxing.so \
	device/motorola/sholes/proprietary/libopencore_asflocalreg.so:system/lib/libopencore_asflocalreg.so \
	device/motorola/sholes/proprietary/libLCML.so:system/lib/libLCML.so \
	device/motorola/sholes/proprietary/libopencore_asflocal.so:system/lib/libopencore_asflocal.so \
	device/motorola/sholes/proprietary/liboemcamera.so:system/lib/liboemcamera.so \
	device/motorola/sholes/proprietary/libinterstitial.so:system/lib/libinterstitial.so \
	device/motorola/sholes/proprietary/libOMX.TI.WMA.decode.so:system/lib/libOMX.TI.WMA.decode.so \
	device/motorola/sholes/proprietary/gralloc.omap3.so:system/lib/hw/gralloc.omap3.so \
	device/motorola/sholes/proprietary/lights.sholes.so:system/lib/hw/lights.sholes.so \
	device/motorola/sholes/proprietary/sensors.sholes.so:system/lib/hw/sensors.sholes.so \
	device/motorola/sholes/proprietary/libOMX.TI.JPEG.Encoder.so:system/lib/libOMX.TI.JPEG.Encoder.so \
	device/motorola/sholes/proprietary/libOMX_Core.so:system/lib/libOMX_Core.so \
	device/motorola/sholes/proprietary/libOMX.TI.AAC.encode.so:system/lib/libOMX.TI.AAC.encode.so \
	device/motorola/sholes/proprietary/libOMX.TI.WBAMR.encode.so:system/lib/libOMX.TI.WBAMR.encode.so \
	device/motorola/sholes/proprietary/libOMX.TI.Video.Decoder.so:system/lib/libOMX.TI.Video.Decoder.so \
	device/motorola/sholes/proprietary/libGLESv1_CM_POWERVR_SGX530_121.so:system/lib/egl/libGLESv1_CM_POWERVR_SGX530_121.so \
	device/motorola/sholes/proprietary/libEGL_POWERVR_SGX530_121.so:system/lib/egl/libEGL_POWERVR_SGX530_121.so \
	device/motorola/sholes/proprietary/libGLESv2_POWERVR_SGX530_121.so:system/lib/egl/libGLESv2_POWERVR_SGX530_121.so \
	device/motorola/sholes/proprietary/libpppd_plugin-ril.so:system/lib/libpppd_plugin-ril.so \
	device/motorola/sholes/proprietary/libsrv_um.so:system/lib/libsrv_um.so \
	device/motorola/sholes/proprietary/libOMX.TI.AMR.decode.so:system/lib/libOMX.TI.AMR.decode.so \
	device/motorola/sholes/proprietary/libOMX.TI.MP3.decode.so:system/lib/libOMX.TI.MP3.decode.so \
	device/motorola/sholes/proprietary/liblvmxipc.so:system/lib/liblvmxipc.so \
	device/motorola/sholes/proprietary/libOMX.TI.AAC.decode.so:system/lib/libOMX.TI.AAC.decode.so \
	device/motorola/sholes/proprietary/libIMGegl.so:system/lib/libIMGegl.so \
	device/motorola/sholes/proprietary/libVendor_ti_omx_config_parser.so:system/lib/libVendor_ti_omx_config_parser.so \
	device/motorola/sholes/proprietary/libglslcompiler.so:system/lib/libglslcompiler.so \
	device/motorola/sholes/proprietary/libmoto_ril.so:system/lib/libmoto_ril.so \
	device/motorola/sholes/proprietary/libpvrANDROID_WSEGL.so:system/lib/libpvrANDROID_WSEGL.so \
	device/motorola/sholes/proprietary/libspeech.so:system/lib/libspeech.so \
	device/motorola/sholes/proprietary/libVendor_ti_omx.so:system/lib/libVendor_ti_omx.so \
	device/motorola/sholes/proprietary/libOMX.TI.AMR.encode.so:system/lib/libOMX.TI.AMR.encode.so \
	device/motorola/sholes/proprietary/libHPImgApi.so:system/lib/libHPImgApi.so \
	device/motorola/sholes/proprietary/libOMX.TI.Video.encoder.so:system/lib/libOMX.TI.Video.encoder.so \
	device/motorola/sholes/proprietary/libOMX.TI.WBAMR.decode.so:system/lib/libOMX.TI.WBAMR.decode.so \
	device/motorola/sholes/proprietary/en-US_ta.bin:system/tts/lang_pico/en-US_ta.bin \
	device/motorola/sholes/proprietary/de-DE_ta.bin:system/tts/lang_pico/de-DE_ta.bin \
	device/motorola/sholes/proprietary/en-US_lh0_sg.bin:system/tts/lang_pico/en-US_lh0_sg.bin \
	device/motorola/sholes/proprietary/fr-FR_ta.bin:system/tts/lang_pico/fr-FR_ta.bin \
	device/motorola/sholes/proprietary/en-GB_kh0_sg.bin:system/tts/lang_pico/en-GB_kh0_sg.bin \
	device/motorola/sholes/proprietary/es-ES_ta.bin:system/tts/lang_pico/es-ES_ta.bin \
	device/motorola/sholes/proprietary/en-GB_ta.bin:system/tts/lang_pico/en-GB_ta.bin \
	device/motorola/sholes/proprietary/es-ES_zl0_sg.bin:system/tts/lang_pico/es-ES_zl0_sg.bin \
	device/motorola/sholes/proprietary/it-IT_cm0_sg.bin:system/tts/lang_pico/it-IT_cm0_sg.bin \
	device/motorola/sholes/proprietary/de-DE_gl0_sg.bin:system/tts/lang_pico/de-DE_gl0_sg.bin \
	device/motorola/sholes/proprietary/fr-FR_nk0_sg.bin:system/tts/lang_pico/fr-FR_nk0_sg.bin \
	device/motorola/sholes/proprietary/it-IT_ta.bin:system/tts/lang_pico/it-IT_ta.bin
endif
