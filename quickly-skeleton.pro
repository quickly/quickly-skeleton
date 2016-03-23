include(vendor/vendor.pri)

QT += qml quick

SOURCES += src/main.cpp
QMLIFY += src/qml

qmlify.output  = qml/resources.qrc
qmlify.commands = qmlify --import $$PWD/vendor -d qml ${QMAKE_FILE_NAME}
qmlify.input = QMLIFY
qmlify.depend_command = ls $$PWD/src/qml/*
qmlify.variable_out = RESOURCES
qmlify.CONFIG += target_predeps
QMAKE_EXTRA_COMPILERS += qmlify
