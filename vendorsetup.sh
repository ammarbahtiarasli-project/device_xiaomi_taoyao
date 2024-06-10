echo 'Starting to clone stuffs needed to build for taoyao'


# Vendor
echo 'Cloning vendor tree'
rm -rf vendor/xiaomi/taoyao && git clone git@github.com:ammarbahtiarasli-project/vendor_xiaomi_taoyao.git vendor/xiaomi/taoyao

# Kernel
echo 'Cloning kernel tree'
rm -rf device/xiaomi/taoyao-kernel && git clone git@github.com:ammarbahtiarasli-project/device_xiaomi_taoyao-kernel.git device/xiaomi/taoyao-kernel

# Kernel
echo 'Cloning kernel header'
rm -rf kernel/xiaomi/sm8350 && git clone git@github.com:LineageOS/android_kernel_xiaomi_sm8350 -b lineage-21 kernel/xiaomi/sm8350

# priv-keys
#echo 'Cloning priv-keys'
rm -rf vendor/evolution-priv &&  git clone git@github.com:ammarbahtiarasli-project/vendor_evolution-priv.git vendor/evolution-priv

# Camera
echo 'Cloning Leica Camera'
rm -rf vendor/xiaomi/camera && git clone git@github.com:ammarbahtiarasli-project/vendor_xiaomi_camera.git vendor/xiaomi/camera

# Hardware Xiaomi
echo 'Cloning Hardware Xiaomi'
rm -rf hardware/xiaomi && git clone git@github.com:Evolution-X/hardware_xiaomi.git -b udc hardware/xiaomi

echo 'Cloning Dolby Vision'
rm -rf hardware/qcom-caf/sm8350/display && git clone git@github.com:Evolution-XYZ/hardware_qcom-caf_sm8350_display -b udc hardware/qcom-caf/sm8350/display

echo 'Cloning Dolby Atmos'
rm -rf vendor/xiaomi/dolby && git clone git@github.com:ammarbahtiarasli-project/vendor_xiaomi_dolby.git vendor/xiaomi/dolby

echo 'delete vendorsetup.sh from device tree once this is done'
mv device/xiaomi/taoyao/vendorsetup.sh device/xiaomi/taoyao/vendorsetup.bak
