#
# "main" pseudo-component makefile.
#
# (Uses default behaviour of compiling all source files in directory, adding 'include' to include path.)

ifdef CONFIG_ESP32_KORVO_V1_1_BOARD
COMPONENT_ADD_INCLUDEDIRS += ./esp32_korvo_v1
COMPONENT_SRCDIRS += ./esp32_korvo_v
endif
