#############################################################################
# Makefile for building: paramsynthgui
# Generated by qmake (2.01a) (Qt 4.8.6) on: Fri May 29 22:46:34 2015
# Project:  paramsynthgui.pro
# Template: app
# Command: /usr/bin/qmake-qt4 -o Makefile paramsynthgui.pro
#############################################################################

####### Compiler, tools and options

CC            = gcc
CXX           = g++
DEFINES       = -DQT_NO_DEBUG -DQT_GUI_LIB -DQT_NETWORK_LIB -DQT_CORE_LIB -DQT_SHARED
CFLAGS        = -m64 -pipe -O2 -D_REENTRANT -Wall -W $(DEFINES)
CXXFLAGS      = -m64 -pipe -O2 -D_REENTRANT -Wall -W $(DEFINES)
INCPATH       = -I/usr/share/qt4/mkspecs/linux-g++-64 -I. -I/usr/include/qt4/QtCore -I/usr/include/qt4/QtNetwork -I/usr/include/qt4/QtGui -I/usr/include/qt4 -I. -I. -I.
LINK          = g++
LFLAGS        = -m64 -Wl,-O1
LIBS          = $(SUBLIBS)  -L/usr/lib/x86_64-linux-gnu -lQtGui -lQtNetwork -lQtCore -lpthread 
AR            = ar cqs
RANLIB        = 
QMAKE         = /usr/bin/qmake-qt4
TAR           = tar -cf
COMPRESS      = gzip -9f
COPY          = cp -f
SED           = sed
COPY_FILE     = $(COPY)
COPY_DIR      = $(COPY) -r
STRIP         = strip
INSTALL_FILE  = install -m 644 -p
INSTALL_DIR   = $(COPY_DIR)
INSTALL_PROGRAM = install -m 755 -p
DEL_FILE      = rm -f
SYMLINK       = ln -f -s
DEL_DIR       = rmdir
MOVE          = mv -f
CHK_DIR_EXISTS= test -d
MKDIR         = mkdir -p

####### Output directory

OBJECTS_DIR   = ./

####### Files

SOURCES       = main.cpp \
		loginwindow.cpp \
		mainwindow.cpp \
		tablemodel.cpp \
		tableentry.cpp \
		newparamsynthjob.cpp \
		network.cpp moc_loginwindow.cpp \
		moc_mainwindow.cpp \
		moc_tablemodel.cpp \
		moc_newparamsynthjob.cpp \
		moc_network.cpp
OBJECTS       = main.o \
		loginwindow.o \
		mainwindow.o \
		tablemodel.o \
		tableentry.o \
		newparamsynthjob.o \
		network.o \
		moc_loginwindow.o \
		moc_mainwindow.o \
		moc_tablemodel.o \
		moc_newparamsynthjob.o \
		moc_network.o
DIST          = /usr/share/qt4/mkspecs/common/unix.conf \
		/usr/share/qt4/mkspecs/common/linux.conf \
		/usr/share/qt4/mkspecs/common/gcc-base.conf \
		/usr/share/qt4/mkspecs/common/gcc-base-unix.conf \
		/usr/share/qt4/mkspecs/common/g++-base.conf \
		/usr/share/qt4/mkspecs/common/g++-unix.conf \
		/usr/share/qt4/mkspecs/qconfig.pri \
		/usr/share/qt4/mkspecs/modules/qt_phonon.pri \
		/usr/share/qt4/mkspecs/features/qt_functions.prf \
		/usr/share/qt4/mkspecs/features/qt_config.prf \
		/usr/share/qt4/mkspecs/features/exclusive_builds.prf \
		/usr/share/qt4/mkspecs/features/default_pre.prf \
		/usr/share/qt4/mkspecs/features/release.prf \
		/usr/share/qt4/mkspecs/features/default_post.prf \
		/usr/share/qt4/mkspecs/features/qt.prf \
		/usr/share/qt4/mkspecs/features/unix/thread.prf \
		/usr/share/qt4/mkspecs/features/moc.prf \
		/usr/share/qt4/mkspecs/features/shared.prf \
		/usr/share/qt4/mkspecs/features/unix/gdb_dwarf_index.prf \
		/usr/share/qt4/mkspecs/features/warn_on.prf \
		/usr/share/qt4/mkspecs/features/resources.prf \
		/usr/share/qt4/mkspecs/features/uic.prf \
		/usr/share/qt4/mkspecs/features/yacc.prf \
		/usr/share/qt4/mkspecs/features/lex.prf \
		/usr/share/qt4/mkspecs/features/include_source_dir.prf \
		paramsynthgui.pro
QMAKE_TARGET  = paramsynthgui
DESTDIR       = 
TARGET        = paramsynthgui

first: all
####### Implicit rules

.SUFFIXES: .o .c .cpp .cc .cxx .C

.cpp.o:
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o "$@" "$<"

.cc.o:
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o "$@" "$<"

.cxx.o:
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o "$@" "$<"

.C.o:
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o "$@" "$<"

.c.o:
	$(CC) -c $(CFLAGS) $(INCPATH) -o "$@" "$<"

####### Build rules

all: Makefile $(TARGET)

$(TARGET): ui_loginwindow.h ui_mainwindow.h ui_newparamsynthjob.h $(OBJECTS)  
	$(LINK) $(LFLAGS) -o $(TARGET) $(OBJECTS) $(OBJCOMP) $(LIBS)

Makefile: paramsynthgui.pro  /usr/share/qt4/mkspecs/linux-g++-64/qmake.conf /usr/share/qt4/mkspecs/common/unix.conf \
		/usr/share/qt4/mkspecs/common/linux.conf \
		/usr/share/qt4/mkspecs/common/gcc-base.conf \
		/usr/share/qt4/mkspecs/common/gcc-base-unix.conf \
		/usr/share/qt4/mkspecs/common/g++-base.conf \
		/usr/share/qt4/mkspecs/common/g++-unix.conf \
		/usr/share/qt4/mkspecs/qconfig.pri \
		/usr/share/qt4/mkspecs/modules/qt_phonon.pri \
		/usr/share/qt4/mkspecs/features/qt_functions.prf \
		/usr/share/qt4/mkspecs/features/qt_config.prf \
		/usr/share/qt4/mkspecs/features/exclusive_builds.prf \
		/usr/share/qt4/mkspecs/features/default_pre.prf \
		/usr/share/qt4/mkspecs/features/release.prf \
		/usr/share/qt4/mkspecs/features/default_post.prf \
		/usr/share/qt4/mkspecs/features/qt.prf \
		/usr/share/qt4/mkspecs/features/unix/thread.prf \
		/usr/share/qt4/mkspecs/features/moc.prf \
		/usr/share/qt4/mkspecs/features/shared.prf \
		/usr/share/qt4/mkspecs/features/unix/gdb_dwarf_index.prf \
		/usr/share/qt4/mkspecs/features/warn_on.prf \
		/usr/share/qt4/mkspecs/features/resources.prf \
		/usr/share/qt4/mkspecs/features/uic.prf \
		/usr/share/qt4/mkspecs/features/yacc.prf \
		/usr/share/qt4/mkspecs/features/lex.prf \
		/usr/share/qt4/mkspecs/features/include_source_dir.prf \
		/usr/lib/x86_64-linux-gnu/libQtGui.prl \
		/usr/lib/x86_64-linux-gnu/libQtNetwork.prl \
		/usr/lib/x86_64-linux-gnu/libQtCore.prl
	$(QMAKE) -o Makefile paramsynthgui.pro
/usr/share/qt4/mkspecs/common/unix.conf:
/usr/share/qt4/mkspecs/common/linux.conf:
/usr/share/qt4/mkspecs/common/gcc-base.conf:
/usr/share/qt4/mkspecs/common/gcc-base-unix.conf:
/usr/share/qt4/mkspecs/common/g++-base.conf:
/usr/share/qt4/mkspecs/common/g++-unix.conf:
/usr/share/qt4/mkspecs/qconfig.pri:
/usr/share/qt4/mkspecs/modules/qt_phonon.pri:
/usr/share/qt4/mkspecs/features/qt_functions.prf:
/usr/share/qt4/mkspecs/features/qt_config.prf:
/usr/share/qt4/mkspecs/features/exclusive_builds.prf:
/usr/share/qt4/mkspecs/features/default_pre.prf:
/usr/share/qt4/mkspecs/features/release.prf:
/usr/share/qt4/mkspecs/features/default_post.prf:
/usr/share/qt4/mkspecs/features/qt.prf:
/usr/share/qt4/mkspecs/features/unix/thread.prf:
/usr/share/qt4/mkspecs/features/moc.prf:
/usr/share/qt4/mkspecs/features/shared.prf:
/usr/share/qt4/mkspecs/features/unix/gdb_dwarf_index.prf:
/usr/share/qt4/mkspecs/features/warn_on.prf:
/usr/share/qt4/mkspecs/features/resources.prf:
/usr/share/qt4/mkspecs/features/uic.prf:
/usr/share/qt4/mkspecs/features/yacc.prf:
/usr/share/qt4/mkspecs/features/lex.prf:
/usr/share/qt4/mkspecs/features/include_source_dir.prf:
/usr/lib/x86_64-linux-gnu/libQtGui.prl:
/usr/lib/x86_64-linux-gnu/libQtNetwork.prl:
/usr/lib/x86_64-linux-gnu/libQtCore.prl:
qmake:  FORCE
	@$(QMAKE) -o Makefile paramsynthgui.pro

dist: 
	@$(CHK_DIR_EXISTS) .tmp/paramsynthgui1.0.0 || $(MKDIR) .tmp/paramsynthgui1.0.0 
	$(COPY_FILE) --parents $(SOURCES) $(DIST) .tmp/paramsynthgui1.0.0/ && $(COPY_FILE) --parents loginwindow.h mainwindow.h tablemodel.h tableentry.h newparamsynthjob.h network.h .tmp/paramsynthgui1.0.0/ && $(COPY_FILE) --parents main.cpp loginwindow.cpp mainwindow.cpp tablemodel.cpp tableentry.cpp newparamsynthjob.cpp network.cpp .tmp/paramsynthgui1.0.0/ && $(COPY_FILE) --parents loginwindow.ui mainwindow.ui newparamsynthjob.ui .tmp/paramsynthgui1.0.0/ && (cd `dirname .tmp/paramsynthgui1.0.0` && $(TAR) paramsynthgui1.0.0.tar paramsynthgui1.0.0 && $(COMPRESS) paramsynthgui1.0.0.tar) && $(MOVE) `dirname .tmp/paramsynthgui1.0.0`/paramsynthgui1.0.0.tar.gz . && $(DEL_FILE) -r .tmp/paramsynthgui1.0.0


clean:compiler_clean 
	-$(DEL_FILE) $(OBJECTS)
	-$(DEL_FILE) *~ core *.core


####### Sub-libraries

distclean: clean
	-$(DEL_FILE) $(TARGET) 
	-$(DEL_FILE) Makefile


check: first

mocclean: compiler_moc_header_clean compiler_moc_source_clean

mocables: compiler_moc_header_make_all compiler_moc_source_make_all

compiler_moc_header_make_all: moc_loginwindow.cpp moc_mainwindow.cpp moc_tablemodel.cpp moc_newparamsynthjob.cpp moc_network.cpp
compiler_moc_header_clean:
	-$(DEL_FILE) moc_loginwindow.cpp moc_mainwindow.cpp moc_tablemodel.cpp moc_newparamsynthjob.cpp moc_network.cpp
moc_loginwindow.cpp: network.h \
		loginwindow.h
	/usr/lib/x86_64-linux-gnu/qt4/bin/moc $(DEFINES) $(INCPATH) loginwindow.h -o moc_loginwindow.cpp

moc_mainwindow.cpp: tablemodel.h \
		tableentry.h \
		newparamsynthjob.h \
		mainwindow.h
	/usr/lib/x86_64-linux-gnu/qt4/bin/moc $(DEFINES) $(INCPATH) mainwindow.h -o moc_mainwindow.cpp

moc_tablemodel.cpp: tableentry.h \
		tablemodel.h
	/usr/lib/x86_64-linux-gnu/qt4/bin/moc $(DEFINES) $(INCPATH) tablemodel.h -o moc_tablemodel.cpp

moc_newparamsynthjob.cpp: newparamsynthjob.h
	/usr/lib/x86_64-linux-gnu/qt4/bin/moc $(DEFINES) $(INCPATH) newparamsynthjob.h -o moc_newparamsynthjob.cpp

moc_network.cpp: network.h
	/usr/lib/x86_64-linux-gnu/qt4/bin/moc $(DEFINES) $(INCPATH) network.h -o moc_network.cpp

compiler_rcc_make_all:
compiler_rcc_clean:
compiler_image_collection_make_all: qmake_image_collection.cpp
compiler_image_collection_clean:
	-$(DEL_FILE) qmake_image_collection.cpp
compiler_moc_source_make_all:
compiler_moc_source_clean:
compiler_uic_make_all: ui_loginwindow.h ui_mainwindow.h ui_newparamsynthjob.h
compiler_uic_clean:
	-$(DEL_FILE) ui_loginwindow.h ui_mainwindow.h ui_newparamsynthjob.h
ui_loginwindow.h: loginwindow.ui
	/usr/lib/x86_64-linux-gnu/qt4/bin/uic loginwindow.ui -o ui_loginwindow.h

ui_mainwindow.h: mainwindow.ui
	/usr/lib/x86_64-linux-gnu/qt4/bin/uic mainwindow.ui -o ui_mainwindow.h

ui_newparamsynthjob.h: newparamsynthjob.ui
	/usr/lib/x86_64-linux-gnu/qt4/bin/uic newparamsynthjob.ui -o ui_newparamsynthjob.h

compiler_yacc_decl_make_all:
compiler_yacc_decl_clean:
compiler_yacc_impl_make_all:
compiler_yacc_impl_clean:
compiler_lex_make_all:
compiler_lex_clean:
compiler_clean: compiler_moc_header_clean compiler_uic_clean 

####### Compile

main.o: main.cpp loginwindow.h \
		network.h \
		mainwindow.h \
		tablemodel.h \
		tableentry.h \
		newparamsynthjob.h
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o main.o main.cpp

loginwindow.o: loginwindow.cpp loginwindow.h \
		network.h \
		ui_loginwindow.h
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o loginwindow.o loginwindow.cpp

mainwindow.o: mainwindow.cpp mainwindow.h \
		tablemodel.h \
		tableentry.h \
		newparamsynthjob.h \
		ui_mainwindow.h
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o mainwindow.o mainwindow.cpp

tablemodel.o: tablemodel.cpp tablemodel.h \
		tableentry.h
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o tablemodel.o tablemodel.cpp

tableentry.o: tableentry.cpp tableentry.h
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o tableentry.o tableentry.cpp

newparamsynthjob.o: newparamsynthjob.cpp newparamsynthjob.h \
		ui_newparamsynthjob.h
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o newparamsynthjob.o newparamsynthjob.cpp

network.o: network.cpp network.h
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o network.o network.cpp

moc_loginwindow.o: moc_loginwindow.cpp 
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o moc_loginwindow.o moc_loginwindow.cpp

moc_mainwindow.o: moc_mainwindow.cpp 
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o moc_mainwindow.o moc_mainwindow.cpp

moc_tablemodel.o: moc_tablemodel.cpp 
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o moc_tablemodel.o moc_tablemodel.cpp

moc_newparamsynthjob.o: moc_newparamsynthjob.cpp 
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o moc_newparamsynthjob.o moc_newparamsynthjob.cpp

moc_network.o: moc_network.cpp 
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o moc_network.o moc_network.cpp

####### Install

install:   FORCE

uninstall:   FORCE

FORCE:

