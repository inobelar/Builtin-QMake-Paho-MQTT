 # ------------------------------------------------------------------------------
# # Example of usage:
#
# Add it to your .pro file:
#
#     PAHO_MQTT_CPP_SRC_PATH = path/to/paho.mqtt.cpp/src/
#     include(path/to/paho_mqtt_cpp_builtin/paho_mqtt_cpp_builtin.pri)
#
# ------------------------------------------------------------------------------

# Make sure that PAHO MQTT CPP source path variable specified
if(isEmpty(PAHO_MQTT_CPP_SRC_PATH)) {
    error("PAHO MQTT CPP source path not defined. For example: path/to/paho.mqtt.cpp/src/")
}

INCLUDEPATH += $${PAHO_MQTT_CPP_SRC_PATH}

PAHO_MQTT_CPP_HEADERS_PATH = $${PAHO_MQTT_CPP_SRC_PATH}/mqtt

HEADERS += \
    $${PAHO_MQTT_CPP_HEADERS_PATH}/async_client.h \
    $${PAHO_MQTT_CPP_HEADERS_PATH}/buffer_ref.h \
    $${PAHO_MQTT_CPP_HEADERS_PATH}/buffer_view.h \
    $${PAHO_MQTT_CPP_HEADERS_PATH}/callback.h \
    $${PAHO_MQTT_CPP_HEADERS_PATH}/client.h \
    $${PAHO_MQTT_CPP_HEADERS_PATH}/connect_options.h \
    $${PAHO_MQTT_CPP_HEADERS_PATH}/delivery_token.h \
    $${PAHO_MQTT_CPP_HEADERS_PATH}/disconnect_options.h \
    $${PAHO_MQTT_CPP_HEADERS_PATH}/exception.h \
    $${PAHO_MQTT_CPP_HEADERS_PATH}/iaction_listener.h \
    $${PAHO_MQTT_CPP_HEADERS_PATH}/iasync_client.h \
    $${PAHO_MQTT_CPP_HEADERS_PATH}/iclient_persistence.h \
    $${PAHO_MQTT_CPP_HEADERS_PATH}/message.h \
    $${PAHO_MQTT_CPP_HEADERS_PATH}/properties.h \
    $${PAHO_MQTT_CPP_HEADERS_PATH}/response_options.h \
    $${PAHO_MQTT_CPP_HEADERS_PATH}/server_response.h \
    $${PAHO_MQTT_CPP_HEADERS_PATH}/ssl_options.h \
    $${PAHO_MQTT_CPP_HEADERS_PATH}/string_collection.h \
    $${PAHO_MQTT_CPP_HEADERS_PATH}/subscribe_options.h \
    $${PAHO_MQTT_CPP_HEADERS_PATH}/thread_queue.h \
    $${PAHO_MQTT_CPP_HEADERS_PATH}/token.h \
    $${PAHO_MQTT_CPP_HEADERS_PATH}/topic.h \
    $${PAHO_MQTT_CPP_HEADERS_PATH}/types.h \
    $${PAHO_MQTT_CPP_HEADERS_PATH}/will_options.h

SOURCES += \
    $${PAHO_MQTT_CPP_SRC_PATH}/async_client.cpp \
    $${PAHO_MQTT_CPP_SRC_PATH}/client.cpp \
    $${PAHO_MQTT_CPP_SRC_PATH}/connect_options.cpp \
    $${PAHO_MQTT_CPP_SRC_PATH}/disconnect_options.cpp \
    $${PAHO_MQTT_CPP_SRC_PATH}/iclient_persistence.cpp \
    $${PAHO_MQTT_CPP_SRC_PATH}/message.cpp \
    $${PAHO_MQTT_CPP_SRC_PATH}/properties.cpp \
    $${PAHO_MQTT_CPP_SRC_PATH}/response_options.cpp \
    $${PAHO_MQTT_CPP_SRC_PATH}/ssl_options.cpp \
    $${PAHO_MQTT_CPP_SRC_PATH}/string_collection.cpp \
    $${PAHO_MQTT_CPP_SRC_PATH}/subscribe_options.cpp \
    $${PAHO_MQTT_CPP_SRC_PATH}/token.cpp \
    $${PAHO_MQTT_CPP_SRC_PATH}/topic.cpp \
    $${PAHO_MQTT_CPP_SRC_PATH}/will_options.cpp
