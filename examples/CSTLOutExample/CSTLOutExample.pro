#-------------------------------------------------
#
# Project created by QtCreator 2015-07-20T11:14:10
#
#-------------------------------------------------

QT       += core network xml

TARGET = CSTLOutExample
CONFIG   += console
CONFIG   -= app_bundle

TEMPLATE = app


SOURCES += main.cpp \         
    model/user.cpp \
    controllers/usercontroller.cpp


HEADERS += \            
    model/user.h \
    controllers/usercontroller.h


QMAKE_CXXFLAGS += -std=c++11

OTHER_FILES += \
    server/config/CPPWeb.ini \
    server/config/log/CPPWebServer.log

DISTFILES += \
    server/pages/user.xhtml \
    server/pages/user.view

unix {
    INCLUDEPATH += /usr/lib
    LIBS += -L/usr/lib/cwf -lCPPWebFramework
}

macx {
    INCLUDEPATH += /usr/local/lib
    LIBS += -L/usr/local/lib -lCPPWebFramework
}

win32 {
    INCLUDEPATH += C:/
    LIBS += -LC:/cwf -lCPPWebFramework
}

QMAKE_CXXFLAGS_RELEASE -= -O1
QMAKE_CXXFLAGS_RELEASE -= -O2
QMAKE_CXXFLAGS_RELEASE += -O3

#Strongly recommended
#LIBS += -ljemalloc
