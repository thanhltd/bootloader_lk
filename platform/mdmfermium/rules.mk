LOCAL_DIR := $(GET_LOCAL_DIR)

ARCH    := arm
ARM_CPU := cortex-a8
CPU     := generic

DEFINES += ARM_CPU_CORE_A7


DEFINES += PERIPH_BLK_BLSP=1
DEFINES += WITH_CPU_EARLY_INIT=0 WITH_CPU_WARM_BOOT=0

INCLUDES += -I$(LOCAL_DIR)/include -I$(LK_TOP_DIR)/platform/msm_shared/include

OBJS += \
       $(LOCAL_DIR)/platform.o \
       $(LOCAL_DIR)/acpuclock.o \
       $(LOCAL_DIR)/gpio.o \
       $(LOCAL_DIR)/mdmfermium-clock.o

LINKER_SCRIPT += $(BUILDDIR)/system-onesegment.ld

include platform/msm_shared/rules.mk
