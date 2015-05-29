#-------------------------------------------------
#
# Project created by QtCreator 2015-05-24T11:16:16
#
#-------------------------------------------------

CONFIG   += qt
QT	 += gui
QT       += core gui
QT       += network

greaterThan(QT_MAJOR_VERSION, 4): QT += widgets

TARGET = paramsynthgui
TEMPLATE = app
INCLUDEPATH += .

SOURCES += main.cpp\
        loginwindow.cpp \
    mainwindow.cpp \
    tablemodel.cpp \
    tableentry.cpp \
    newparamsynthjob.cpp \
    network.cpp

HEADERS  += loginwindow.h \
    mainwindow.h \
    tablemodel.h \
    tableentry.h \
    newparamsynthjob.h \
    network.h

FORMS    += loginwindow.ui \
    mainwindow.ui \
    newparamsynthjob.ui

OTHER_FILES += \
    Space-Plant-icon.png
