#-------------------------------------------------
#
# Project created by QtCreator 2011-10-03T22:03:33
#
#-------------------------------------------------

# General info
TARGET = tufao
TEMPLATE = lib
VERSION = 0.1.0

QT       += network
QT       -= gui

CONFIG += dll

symbian {
    MMP_RULES += EXPORTUNFROZEN
    TARGET.UID3 = 0xE6DE46D1
    TARGET.CAPABILITY =
    TARGET.EPOCALLOWDLLDATA = 1
    addFiles.sources = tufao.dll
    addFiles.path = !:/sys/bin
    DEPLOYMENT += addFiles
}

# Build info
DEFINES += TUFAO_LIBRARY
OBJECTS_DIR = build
MOC_DIR = build
DESTDIR = lib

# Install info
PREFIX = /usr/local
unix:!symbian:maemo5 {
    PREFIX = /opt/usr
}

unix:!symbian:target.path = $$PREFIX/lib

unix {
    headers.path = $$PREFIX/include/tufao
    headers.files = src/*.h

    qmakefile.path = $$PREFIX/share/qt/mkspecs/features
    qmakefile.files = tufao.prf

    documentation.path = $$PREFIX/share/doc/qt/qch
    documentation.files = doc/html/tufao.qch
    documentation.extra = doxygen
}

INSTALLS += target
unix:INSTALLS += headers qmakefile documentation

# Project files
SOURCES += src/httpserver.cpp \
    src/httpserverrequest.cpp \
    src/httpserverresponse.cpp \
    src/httpsserver.cpp \
    src/url.cpp \
    src/querystring.cpp \
    src/priv/tcpserverwrapper.cpp \
    src/priv/reasonphrase.cpp \
    src/priv/http_parser.cpp

HEADERS += src/httpserver.h\
    src/tufao_global.h \
    src/httpserverrequest.h \
    src/httpserverresponse.h \
    src/httpsserver.h \
    src/url.h \
    src/querystring.h \
    src/priv/tcpserverwrapper.h \
    src/priv/httpserver.h \
    src/priv/httpserverrequest.h \
    src/priv/httpsserver.h \
    src/priv/httpserverresponse.h \
    src/priv/reasonphrase.h \
    src/priv/http_parser_qt_helper.h \
    src/priv/http_parser.h \
    src/priv/url.h \
    src/ibytearray.h \
    src/headers.h
