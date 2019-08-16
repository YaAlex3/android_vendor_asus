# Copyright (C) 2014 The CyanogenMod Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
# http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# Pick up overlay for features that depend on non-open-source files

LOCAL_PATH := vendor/asus/Z010DD/proprietary

PRODUCT_COPY_FILES += \
        $(LOCAL_PATH)/system/cpuid.sh:install/bin/cpuid.sh
$(shell mkdir -p  $(LOCAL_PATH)/../../../../out/target/product/Z010D/install/Z010DD/system)
$(shell cp -rf $(LOCAL_PATH)/system/*  $(LOCAL_PATH)/../../../../out/target/product/Z010D/install/Z010DD/system)
