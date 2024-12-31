#
# Copyright (C) 2024 The Android Open Source Project
# Copyright (C) 2024 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

LOCAL_PATH := $(call my-dir)

COMMON_LUNCH_CHOICES := \
    twrp_pearl-eng

ifeq ($(TARGET_DEVICE),pearl)
include $(call all-subdir-makefiles,$(LOCAL_PATH))
endif
