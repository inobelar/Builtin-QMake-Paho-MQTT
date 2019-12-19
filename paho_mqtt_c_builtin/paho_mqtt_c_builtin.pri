 # ------------------------------------------------------------------------------
# # Example of usage:
#
# Add it to your .pro file:
#
#     PAHO_MQTT_C_SRC_PATH = path/to/paho.mqtt.c/src/
#     include(path/to/paho_mqtt_c_builtin/paho_mqtt_c_builtin.pri)
#
# ------------------------------------------------------------------------------

# Make sure that PAHO MQTT C source path variable specified
if(isEmpty(PAHO_MQTT_C_SRC_PATH)) {
    error("PAHO MQTT C source path not defined. For example: path/to/paho.mqtt.c/src/")
}

INCLUDEPATH += $${PAHO_MQTT_C_SRC_PATH}

SOURCES += \
    $${PAHO_MQTT_C_SRC_PATH}/Base64.c \
    $${PAHO_MQTT_C_SRC_PATH}/Clients.c \
    $${PAHO_MQTT_C_SRC_PATH}/Heap.c \
    $${PAHO_MQTT_C_SRC_PATH}/LinkedList.c \
    $${PAHO_MQTT_C_SRC_PATH}/Log.c \
    $${PAHO_MQTT_C_SRC_PATH}/Messages.c \
    $${PAHO_MQTT_C_SRC_PATH}/MQTTPacket.c \
    $${PAHO_MQTT_C_SRC_PATH}/MQTTPacketOut.c \
    $${PAHO_MQTT_C_SRC_PATH}/MQTTPersistenceDefault.c \
    $${PAHO_MQTT_C_SRC_PATH}/MQTTPersistence.c \
    $${PAHO_MQTT_C_SRC_PATH}/MQTTProperties.c \
    $${PAHO_MQTT_C_SRC_PATH}/MQTTProtocolClient.c \
    $${PAHO_MQTT_C_SRC_PATH}/MQTTProtocolOut.c \
    $${PAHO_MQTT_C_SRC_PATH}/MQTTReasonCodes.c \
    $${PAHO_MQTT_C_SRC_PATH}/OsWrapper.c \
    $${PAHO_MQTT_C_SRC_PATH}/SHA1.c \
    $${PAHO_MQTT_C_SRC_PATH}/SocketBuffer.c \
    $${PAHO_MQTT_C_SRC_PATH}/Socket.c \
    $${PAHO_MQTT_C_SRC_PATH}/StackTrace.c \
    $${PAHO_MQTT_C_SRC_PATH}/Thread.c \
    $${PAHO_MQTT_C_SRC_PATH}/Tree.c \
    $${PAHO_MQTT_C_SRC_PATH}/utf-8.c \
    $${PAHO_MQTT_C_SRC_PATH}/WebSocket.c

HEADERS += \
    $${PAHO_MQTT_C_SRC_PATH}/Base64.h \
    $${PAHO_MQTT_C_SRC_PATH}/Clients.h \
    $${PAHO_MQTT_C_SRC_PATH}/Heap.h \
    $${PAHO_MQTT_C_SRC_PATH}/LinkedList.h \
    $${PAHO_MQTT_C_SRC_PATH}/Log.h \
    $${PAHO_MQTT_C_SRC_PATH}/Messages.h \
    $${PAHO_MQTT_C_SRC_PATH}/MQTTClientPersistence.h \
    $${PAHO_MQTT_C_SRC_PATH}/MQTTPacket.h \
    $${PAHO_MQTT_C_SRC_PATH}/MQTTPacketOut.h \
    $${PAHO_MQTT_C_SRC_PATH}/MQTTPersistenceDefault.h \
    $${PAHO_MQTT_C_SRC_PATH}/MQTTPersistence.h \
    $${PAHO_MQTT_C_SRC_PATH}/MQTTProperties.h \
    $${PAHO_MQTT_C_SRC_PATH}/MQTTProtocolClient.h \
    $${PAHO_MQTT_C_SRC_PATH}/MQTTProtocol.h \
    $${PAHO_MQTT_C_SRC_PATH}/MQTTProtocolOut.h \
    $${PAHO_MQTT_C_SRC_PATH}/MQTTReasonCodes.h \
    $${PAHO_MQTT_C_SRC_PATH}/MQTTSubscribeOpts.h \
    $${PAHO_MQTT_C_SRC_PATH}/mutex_type.h \
    $${PAHO_MQTT_C_SRC_PATH}/OsWrapper.h \
    $${PAHO_MQTT_C_SRC_PATH}/SHA1.h \
    $${PAHO_MQTT_C_SRC_PATH}/SocketBuffer.h \
    $${PAHO_MQTT_C_SRC_PATH}/Socket.h \
    $${PAHO_MQTT_C_SRC_PATH}/StackTrace.h \
    $${PAHO_MQTT_C_SRC_PATH}/Thread.h \
    $${PAHO_MQTT_C_SRC_PATH}/Tree.h \
    $${PAHO_MQTT_C_SRC_PATH}/utf-8.h \
    $${PAHO_MQTT_C_SRC_PATH}/WebSocket.h

PAHO_MQTT_C_ASYNC {
    SOURCES += $${PAHO_MQTT_C_SRC_PATH}/MQTTAsync.c
    HEADERS += $${PAHO_MQTT_C_SRC_PATH}/MQTTAsync.h
} else {
    SOURCES += $${PAHO_MQTT_C_SRC_PATH}/MQTTClient.c
    HEADERS += $${PAHO_MQTT_C_SRC_PATH}/MQTTClient.h
}

INCLUDEPATH += $${PWD}
HEADERS += $${PWD}/VersionInfo.h

PAHO_MQTT_C_SSL {
    DEFINES += OPENSSL
    SOURCES += $${PAHO_MQTT_C_SRC_PATH}/SSLSocket.c
    HEADERS += $${PAHO_MQTT_C_SRC_PATH}/SSLSocket.h
}
