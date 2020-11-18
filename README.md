# Built-in QMake Paho MQTT

The set of QMake include files for using [Eclipse Paho C Client Library](https://github.com/eclipse/paho.mqtt.c) (v1.3.1) and [Eclipse Paho MQTT C++ Client Library](https://github.com/eclipse/paho.mqtt.cpp) (v1.1) as directly **built-in** into executable. 

This is useful in cases when dynamic/static **linking is not possible** for some reasons.

## Integration

### Paho MQTT C Library

Add into your `*.pro` file next lines:

```qmake
PAHO_MQTT_C_SRC_PATH = <path/to>/paho.mqtt.c/src/
include(<path/to>/paho_mqtt_c_builtin/paho_mqtt_c_builtin.pri)
```

### Paho MQTT C++ Library

Notice, that C++ library depends on C library, and **requires** async support:

Add into your `*.pro` file next lines:

```qmake
PAHO_MQTT_C_SRC_PATH = <path/to>/paho.mqtt.c/src/
CONFIG += PAHO_MQTT_C_ASYNC
include(<path/to>/paho_mqtt_c_builtin/paho_mqtt_c_builtin.pri)

PAHO_MQTT_CPP_SRC_PATH = <path/to>/paho.mqtt.cpp/src/
include(<path/to>/paho_mqtt_cpp_builtin/paho_mqtt_cpp_builtin.pri)
```

## Example of usage

1. Prepare dependencies

```bash
cd your_project_dir

# Clone Eclipse Paho MQTT C and C++ libraries into third_party/ directory
mkdir third_party
cd third_party
git clone https://github.com/eclipse/paho.mqtt.c.git
git clone https://github.com/eclipse/paho.mqtt.cpp.git
cd ..

# Clone this repository
git clone https://github.com/inobelar/Builtin-QMake-Paho-MQTT.git
```

2. In `*.pro` file add:

```qmake
PAHO_MQTT_C_SRC_PATH = $$PWD/third_party/paho.mqtt.c/src/
CONFIG += PAHO_MQTT_C_ASYNC
include($$PWD/Builtin-QMake-Paho-MQTT/paho_mqtt_c_builtin/paho_mqtt_c_builtin.pri)

PAHO_MQTT_CPP_SRC_PATH = $$PWD/third_party/paho.mqtt.cpp/src/
include($$PWD/Builtin-QMake-Paho-MQTT/paho_mqtt_cpp_builtin/paho_mqtt_cpp_builtin.pri)
```

3. Try to compile [C examples](https://github.com/eclipse/paho.mqtt.c/tree/master/src/samples) or [C++ examples](https://github.com/eclipse/paho.mqtt.cpp/tree/master/src/samples)
