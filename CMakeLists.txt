# Edit following two lines to set component requirements (see docs)
set(COMPONENT_REQUIRES)
set(COMPONENT_PRIV_REQUIRES audio_sal audio_hal esp_dispatcher esp_peripherals display_service)

if (CONFIG_ESP32_KORVO_V1_BOARD)
message(STATUS "Current board name is " CONFIG_ESP32_KORVO_V1_1_BOARD)
list(APPEND COMPONENT_ADD_INCLUDEDIRS ./esp32_korvo_v1)
set(COMPONENT_SRCS
./esp32_korvo_v1/board.c
./esp32_korvo_v1/board_pins_config.c
)
endif()

register_component()

idf_component_get_property(audio_board_lib audio_board COMPONENT_LIB)
set_property(TARGET ${audio_board_lib} APPEND PROPERTY INTERFACE_LINK_LIBRARIES ${COMPONENT_LIB})
