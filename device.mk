################# DEVICE SPECIFIC STUFF #####################
#
# Below are some things that make sure that the rom runs
# properly on sholes (droid) hardware
#

# gps info
$(call inherit-product, device/common/gps/gps_us_supl.mk)

# device overlay
DEVICE_PACKAGE_OVERLAYS := device/motorola/sholes/overlay

# properties for sholes
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

# it's a hdpi device
PRODUCT_LOCALES += hdpi

# enough space for precise gc info
PRODUCT_TAGS += dalvik.gc.type-precise

# copy some permissions files
PRODUCT_COPY_FILES += \
	frameworks/base/data/etc/handheld_core_hardware.xml:system/etc/permissions/handheld_core_hardware.xml \
	frameworks/base/data/etc/android.hardware.camera.flash-autofocus.xml:system/etc/permissions/android.hardware.camera.flash-autofocus.xml \
	frameworks/base/data/etc/android.hardware.telephony.gsm.xml:system/etc/permissions/android.hardware.telephony.gsm.xml \
	frameworks/base/data/etc/android.hardware.location.gps.xml:system/etc/permissions/android.hardware.location.gps.xml \
	frameworks/base/data/etc/android.hardware.wifi.xml:system/etc/permissions/android.hardware.wifi.xml \
	frameworks/base/data/etc/android.hardware.sensor.proximity.xml:system/etc/permissions/android.hardware.sensor.proximity.xml \
	frameworks/base/data/etc/android.hardware.sensor.light.xml:system/etc/permissions/android.hardware.sensor.light.xml \
	frameworks/base/data/etc/android.hardware.touchscreen.multitouch.distinct.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.distinct.xml \
	frameworks/base/data/etc/android.software.sip.voip.xml:system/etc/permissions/android.software.sip.voip.xml \
	packages/wallpapers/LivePicker/android.software.live_wallpaper.xml:system/etc/permissions/android.software.live_wallpaper.xml

# include packages
PRODUCT_PACKAGES += \
	librs_jni \
	tiwlan.ini \
	dspexec \
	libbridge \
	overlay.omap3 \
	wlan_cu \
	libtiOsLib \
	wlan_loader \
	libCustomWifi \
	wpa_supplicant.conf \
	dhcpcd.conf \
	libOMX.TI.AAC.encode \
	libOMX.TI.AMR.encode \
	libOMX.TI.WBAMR.encode \
	libOMX.TI.JPEG.Encoder \
	libLCML \
	libOMX_Core \
	libOMX.TI.Video.Decoder \
	libOMX.TI.Video.encoder \
	libVendor_ti_omx \
	gps.sholes \
	sensors.sholes

# include proprietaries
ifneq ($(USE_PROPRIETARIES),)
# if we aren't including google, we need to include some basic files
ifeq ($(filter google,$(USE_PROPRIETARIES)),)
PRODUCT_PACKAGES += \
	Provision \
	QuickSearchBox
endif

# actually include the props
$(foreach prop,$(USE_PROPRIETARIES), \
  $(if $(wildcard device/motorola/sholes/proprietary.$(prop)), \
    $(eval \
PRODUCT_COPY_FILES += $(shell \
	cat device/motorola/sholes/proprietary.$(prop) \
	| sed -r 's/^\/(.*\/)([^/ ]+)$$/device\/motorola\/sholes\/proprietary\/\2:\1\2/' \
	| tr '\n' ' ') \
     ), \
    $(error Cannot include proprietaries from $(prop). List file device/motorola/sholes/proprietary.$(prop) does not exist) \
   ) \
 )
endif

