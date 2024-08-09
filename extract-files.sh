#!/bin/bash
#
# Copyright (C) 2016 The CyanogenMod Project
# Copyright (C) 2017-2020 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# we dont need fixup
#function blob_fixup() {
#    case "${1}" in
#        # Use generic Light HAL context for led_control_service
#        vendor/etc/init/led_control_service.rc)
#            sed -i "8d" "${2}"
#            ;;
#    esac
#}

# If we're being sourced by the common script that we called,
# stop right here. No need to go down the rabbit hole.
if [ "${BASH_SOURCE[0]}" != "${0}" ]; then
    return
fi

set -e

export DEVICE=montblanc
export DEVICE_COMMON=msm8974-common
export TARGET_SOC=msm8974
export VENDOR=samsung
export VENDOR_BRAND="${VENDOR}"
export VENDOR_COMMON=qcom

"./../../${VENDOR_COMMON}/${DEVICE_COMMON}/extract-files.sh" "$@"
