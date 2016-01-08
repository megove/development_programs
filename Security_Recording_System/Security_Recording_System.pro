#-------------------------------------------------
#
# Project created by QtCreator 2015-12-09T16:09:39
#
#-------------------------------------------------

QT       += core gui
CONFIG   += -static -static-libgcc

greaterThan(QT_MAJOR_VERSION, 4): QT += widgets

TARGET = Security_Recording_System
TEMPLATE = app

INCLUDEPATH += C:\Users\gonzalez\Documents\opencv\build\include

#LIBS += "C:\Users\gonzalez\Documents\opencv\build\x86\vc11\lib\*2411.lib"
#LIBS += "C:\Qt\Qt5.5.1\5.5\msvc2012\lib\*d.lib"
#LIBS += "C:\Users\gonzalez\Documents\opencv\build\x86\vc11\lib\*2411d.lib"

SOURCES += main.cpp\
        mainwindow.cpp

HEADERS  += mainwindow.h

FORMS    += mainwindow.ui

#win32:CONFIG(release, debug|release): LIBS +=  -L$$PWD/../../opencv/build/x86/vc11/lib/ -lopencv_calib3d2411
#else:win32:CONFIG(debug, debug|release): LIBS += -L$$PWD/../../opencv/build/x86/vc11/lib/ -lopencv_calib3d2411d

#INCLUDEPATH += $$PWD/../../opencv/build/x86/vc11/lib
#DEPENDPATH += $$PWD/../../opencv/build/x86/vc11/

#win32-g++:CONFIG(release, debug|release): PRE_TARGETDEPS += $$PWD/../../opencv/build/x86/vc11/lib/libopencv_calib3d2411.a
#else:win32-g++:CONFIG(debug, debug|release): PRE_TARGETDEPS += $$PWD/../../opencv/build/x86/vc11/lib/libopencv_calib3d2411d.a
#else:win32:!win32-g++:CONFIG(release, debug|release): PRE_TARGETDEPS += $$PWD/../../opencv/build/x86/vc11/lib/opencv_calib3d2411.lib
#else:win32:!win32-g++:CONFIG(debug, debug|release): PRE_TARGETDEPS += $$PWD/../../opencv/build/x86/vc11/lib/opencv_calib3d2411d.lib

#win32:CONFIG(release, debug|release): LIBS += -L$$PWD/../../opencv/build/x86/vc11/lib/ -lopencv_contrib2411
#else:win32:CONFIG(debug, debug|release): LIBS += -L$$PWD/../../opencv/build/x86/vc11/lib/ -lopencv_contrib2411d

#INCLUDEPATH += $$PWD/../../opencv/build/x86/vc11
#DEPENDPATH += $$PWD/../../opencv/build/x86/vc11

#win32-g++:CONFIG(release, debug|release): PRE_TARGETDEPS += $$PWD/../../opencv/build/x86/vc11/lib/libopencv_contrib2411.a
#else:win32-g++:CONFIG(debug, debug|release): PRE_TARGETDEPS += $$PWD/../../opencv/build/x86/vc11/lib/libopencv_contrib2411d.a
#else:win32:!win32-g++:CONFIG(release, debug|release): PRE_TARGETDEPS += $$PWD/../../opencv/build/x86/vc11/lib/opencv_contrib2411.lib
#else:win32:!win32-g++:CONFIG(debug, debug|release): PRE_TARGETDEPS += $$PWD/../../opencv/build/x86/vc11/lib/opencv_contrib2411d.lib

win32:CONFIG(release, debug|release): LIBS += -static -L$$PWD/../../opencv/build/x86/vc11/lib/ -lopencv_core2411
else:win32:CONFIG(debug, debug|release): LIBS += -L$$PWD/../../opencv/build/x86/vc11/lib/ -lopencv_core2411d

INCLUDEPATH += $$PWD/../../opencv/build/x86/vc11
DEPENDPATH += $$PWD/../../opencv/build/x86/vc11

win32-g++:CONFIG(release, debug|release): PRE_TARGETDEPS += $$PWD/../../opencv/build/x86/vc11/lib/libopencv_core2411.a
else:win32-g++:CONFIG(debug, debug|release): PRE_TARGETDEPS += $$PWD/../../opencv/build/x86/vc11/lib/libopencv_core2411d.a
else:win32:!win32-g++:CONFIG(release, debug|release): PRE_TARGETDEPS += $$PWD/../../opencv/build/x86/vc11/lib/opencv_core2411.lib
else:win32:!win32-g++:CONFIG(debug, debug|release): PRE_TARGETDEPS += $$PWD/../../opencv/build/x86/vc11/lib/opencv_core2411d.lib

win32:CONFIG(release, debug|release): LIBS +=  -static -L$$PWD/../../opencv/build/x86/vc11/lib/ -lopencv_features2d2411
else:win32:CONFIG(debug, debug|release): LIBS += -L$$PWD/../../opencv/build/x86/vc11/lib/ -lopencv_features2d2411d

INCLUDEPATH += $$PWD/../../opencv/build/x86/vc11
DEPENDPATH += $$PWD/../../opencv/build/x86/vc11

#win32-g++:CONFIG(release, debug|release): PRE_TARGETDEPS += $$PWD/../../opencv/build/x86/vc11/lib/libopencv_features2d2411.a
#else:win32-g++:CONFIG(debug, debug|release): PRE_TARGETDEPS += $$PWD/../../opencv/build/x86/vc11/lib/libopencv_features2d2411d.a
#else:win32:!win32-g++:CONFIG(release, debug|release): PRE_TARGETDEPS += $$PWD/../../opencv/build/x86/vc11/lib/opencv_features2d2411.lib
#else:win32:!win32-g++:CONFIG(debug, debug|release): PRE_TARGETDEPS += $$PWD/../../opencv/build/x86/vc11/lib/opencv_features2d2411d.lib

#win32:CONFIG(release, debug|release): LIBS +=  -L$$PWD/../../opencv/build/x86/vc11/lib/ -lopencv_flann2411
#else:win32:CONFIG(debug, debug|release): LIBS += -L$$PWD/../../opencv/build/x86/vc11/lib/ -lopencv_flann2411d

#INCLUDEPATH += $$PWD/../../opencv/build/x86/vc11
#DEPENDPATH += $$PWD/../../opencv/build/x86/vc11

#win32-g++:CONFIG(release, debug|release): PRE_TARGETDEPS += $$PWD/../../opencv/build/x86/vc11/lib/libopencv_flann2411.a
#else:win32-g++:CONFIG(debug, debug|release): PRE_TARGETDEPS += $$PWD/../../opencv/build/x86/vc11/lib/libopencv_flann2411d.a
#else:win32:!win32-g++:CONFIG(release, debug|release): PRE_TARGETDEPS += $$PWD/../../opencv/build/x86/vc11/lib/opencv_flann2411.lib
#else:win32:!win32-g++:CONFIG(debug, debug|release): PRE_TARGETDEPS += $$PWD/../../opencv/build/x86/vc11/lib/opencv_flann2411d.lib

#win32:CONFIG(release, debug|release): LIBS += -L$$PWD/../../opencv/build/x86/vc11/lib/ -lopencv_gpu2411
#else:win32:CONFIG(debug, debug|release): LIBS += -L$$PWD/../../opencv/build/x86/vc11/lib/ -lopencv_gpu2411d

#INCLUDEPATH += $$PWD/../../opencv/build/x86/vc11
#DEPENDPATH += $$PWD/../../opencv/build/x86/vc11

#win32-g++:CONFIG(release, debug|release): PRE_TARGETDEPS += $$PWD/../../opencv/build/x86/vc11/lib/libopencv_gpu2411.a
#else:win32-g++:CONFIG(debug, debug|release): PRE_TARGETDEPS += $$PWD/../../opencv/build/x86/vc11/lib/libopencv_gpu2411d.a
#else:win32:!win32-g++:CONFIG(release, debug|release): PRE_TARGETDEPS += $$PWD/../../opencv/build/x86/vc11/lib/opencv_gpu2411.lib
#else:win32:!win32-g++:CONFIG(debug, debug|release): PRE_TARGETDEPS += $$PWD/../../opencv/build/x86/vc11/lib/opencv_gpu2411d.lib

win32:CONFIG(release, debug|release): LIBS += -static -L$$PWD/../../opencv/build/x86/vc11/lib/ -lopencv_highgui2411
else:win32:CONFIG(debug, debug|release): LIBS += -L$$PWD/../../opencv/build/x86/vc11/lib/ -lopencv_highgui2411d

INCLUDEPATH += $$PWD/../../opencv/build/x86/vc11
DEPENDPATH += $$PWD/../../opencv/build/x86/vc11

win32-g++:CONFIG(release, debug|release): PRE_TARGETDEPS += $$PWD/../../opencv/build/x86/vc11/lib/libopencv_highgui2411.a
else:win32-g++:CONFIG(debug, debug|release): PRE_TARGETDEPS += $$PWD/../../opencv/build/x86/vc11/lib/libopencv_highgui2411d.a
else:win32:!win32-g++:CONFIG(release, debug|release): PRE_TARGETDEPS += $$PWD/../../opencv/build/x86/vc11/lib/opencv_highgui2411.lib
else:win32:!win32-g++:CONFIG(debug, debug|release): PRE_TARGETDEPS += $$PWD/../../opencv/build/x86/vc11/lib/opencv_highgui2411d.lib

win32:CONFIG(release, debug|release): LIBS += -static -L$$PWD/../../opencv/build/x86/vc11/lib/ -lopencv_imgproc2411
else:win32:CONFIG(debug, debug|release): LIBS += -L$$PWD/../../opencv/build/x86/vc11/lib/ -lopencv_imgproc2411d

INCLUDEPATH += $$PWD/../../opencv/build/x86/vc11
DEPENDPATH += $$PWD/../../opencv/build/x86/vc11

win32-g++:CONFIG(release, debug|release): PRE_TARGETDEPS += $$PWD/../../opencv/build/x86/vc11/lib/libopencv_imgproc2411.a
else:win32-g++:CONFIG(debug, debug|release): PRE_TARGETDEPS += $$PWD/../../opencv/build/x86/vc11/lib/libopencv_imgproc2411d.a
else:win32:!win32-g++:CONFIG(release, debug|release): PRE_TARGETDEPS += $$PWD/../../opencv/build/x86/vc11/lib/opencv_imgproc2411.lib
else:win32:!win32-g++:CONFIG(debug, debug|release): PRE_TARGETDEPS += $$PWD/../../opencv/build/x86/vc11/lib/opencv_imgproc2411d.lib

#win32:CONFIG(release, debug|release): LIBS +=  -L$$PWD/../../opencv/build/x86/vc11/lib/ -lopencv_legacy2411
#else:win32:CONFIG(debug, debug|release): LIBS += -L$$PWD/../../opencv/build/x86/vc11/lib/ -lopencv_legacy2411d

#INCLUDEPATH += $$PWD/../../opencv/build/x86/vc11
#DEPENDPATH += $$PWD/../../opencv/build/x86/vc11

#win32-g++:CONFIG(release, debug|release): PRE_TARGETDEPS += $$PWD/../../opencv/build/x86/vc11/lib/libopencv_legacy2411.a
#else:win32-g++:CONFIG(debug, debug|release): PRE_TARGETDEPS += $$PWD/../../opencv/build/x86/vc11/lib/libopencv_legacy2411d.a
#else:win32:!win32-g++:CONFIG(release, debug|release): PRE_TARGETDEPS += $$PWD/../../opencv/build/x86/vc11/lib/opencv_legacy2411.lib
#else:win32:!win32-g++:CONFIG(debug, debug|release): PRE_TARGETDEPS += $$PWD/../../opencv/build/x86/vc11/lib/opencv_legacy2411d.lib

#win32:CONFIG(release, debug|release): LIBS += -L$$PWD/../../opencv/build/x86/vc11/lib/ -lopencv_ml2411
#else:win32:CONFIG(debug, debug|release): LIBS += -L$$PWD/../../opencv/build/x86/vc11/lib/ -lopencv_ml2411d

#INCLUDEPATH += $$PWD/../../opencv/build/x86/vc11
#DEPENDPATH += $$PWD/../../opencv/build/x86/vc11

#win32-g++:CONFIG(release, debug|release): PRE_TARGETDEPS += $$PWD/../../opencv/build/x86/vc11/lib/libopencv_ml2411.a
#else:win32-g++:CONFIG(debug, debug|release): PRE_TARGETDEPS += $$PWD/../../opencv/build/x86/vc11/lib/libopencv_ml2411d.a
#else:win32:!win32-g++:CONFIG(release, debug|release): PRE_TARGETDEPS += $$PWD/../../opencv/build/x86/vc11/lib/opencv_ml2411.lib
#else:win32:!win32-g++:CONFIG(debug, debug|release): PRE_TARGETDEPS += $$PWD/../../opencv/build/x86/vc11/lib/opencv_ml2411d.lib

#win32:CONFIG(release, debug|release): LIBS += -L$$PWD/../../opencv/build/x86/vc11/lib/ -lopencv_nonfree2411
#else:win32:CONFIG(debug, debug|release): LIBS += -L$$PWD/../../opencv/build/x86/vc11/lib/ -lopencv_nonfree2411d

#INCLUDEPATH += $$PWD/../../opencv/build/x86/vc11
#DEPENDPATH += $$PWD/../../opencv/build/x86/vc11

#win32-g++:CONFIG(release, debug|release): PRE_TARGETDEPS += $$PWD/../../opencv/build/x86/vc11/lib/libopencv_nonfree2411.a
#else:win32-g++:CONFIG(debug, debug|release): PRE_TARGETDEPS += $$PWD/../../opencv/build/x86/vc11/lib/libopencv_nonfree2411d.a
#else:win32:!win32-g++:CONFIG(release, debug|release): PRE_TARGETDEPS += $$PWD/../../opencv/build/x86/vc11/lib/opencv_nonfree2411.lib
#else:win32:!win32-g++:CONFIG(debug, debug|release): PRE_TARGETDEPS += $$PWD/../../opencv/build/x86/vc11/lib/opencv_nonfree2411d.lib

#win32:CONFIG(release, debug|release): LIBS +=  -L$$PWD/../../opencv/build/x86/vc11/lib/ -lopencv_objdetect2411
#else:win32:CONFIG(debug, debug|release): LIBS += -L$$PWD/../../opencv/build/x86/vc11/lib/ -lopencv_objdetect2411d

#INCLUDEPATH += $$PWD/../../opencv/build/x86/vc11
#DEPENDPATH += $$PWD/../../opencv/build/x86/vc11

#win32-g++:CONFIG(release, debug|release): PRE_TARGETDEPS += $$PWD/../../opencv/build/x86/vc11/lib/libopencv_objdetect2411.a
#else:win32-g++:CONFIG(debug, debug|release): PRE_TARGETDEPS += $$PWD/../../opencv/build/x86/vc11/lib/libopencv_objdetect2411d.a
#else:win32:!win32-g++:CONFIG(release, debug|release): PRE_TARGETDEPS += $$PWD/../../opencv/build/x86/vc11/lib/opencv_objdetect2411.lib
#else:win32:!win32-g++:CONFIG(debug, debug|release): PRE_TARGETDEPS += $$PWD/../../opencv/build/x86/vc11/lib/opencv_objdetect2411d.lib


#win32:CONFIG(release, debug|release): LIBS += -L$$PWD/../../opencv/build/x86/vc11/lib/ -lopencv_ocl2411
#else:win32:CONFIG(debug, debug|release): LIBS += -L$$PWD/../../opencv/build/x86/vc11/lib/ -lopencv_ocl2411d

#INCLUDEPATH += $$PWD/../../opencv/build/x86/vc11
#DEPENDPATH += $$PWD/../../opencv/build/x86/vc11

#win32-g++:CONFIG(release, debug|release): PRE_TARGETDEPS += $$PWD/../../opencv/build/x86/vc11/lib/libopencv_ocl2411.a
#else:win32-g++:CONFIG(debug, debug|release): PRE_TARGETDEPS += $$PWD/../../opencv/build/x86/vc11/lib/libopencv_ocl2411d.a
#else:win32:!win32-g++:CONFIG(release, debug|release): PRE_TARGETDEPS += $$PWD/../../opencv/build/x86/vc11/lib/opencv_ocl2411.lib
#else:win32:!win32-g++:CONFIG(debug, debug|release): PRE_TARGETDEPS += $$PWD/../../opencv/build/x86/vc11/lib/opencv_ocl2411d.lib

#win32:CONFIG(release, debug|release): LIBS += -L$$PWD/../../opencv/build/x86/vc11/lib/ -lopencv_photo2411
#else:win32:CONFIG(debug, debug|release): LIBS += -L$$PWD/../../opencv/build/x86/vc11/lib/ -lopencv_photo2411d

#INCLUDEPATH += $$PWD/../../opencv/build/x86/vc11
#DEPENDPATH += $$PWD/../../opencv/build/x86/vc11

#win32-g++:CONFIG(release, debug|release): PRE_TARGETDEPS += $$PWD/../../opencv/build/x86/vc11/lib/libopencv_photo2411.a
#else:win32-g++:CONFIG(debug, debug|release): PRE_TARGETDEPS += $$PWD/../../opencv/build/x86/vc11/lib/libopencv_photo2411d.a
#else:win32:!win32-g++:CONFIG(release, debug|release): PRE_TARGETDEPS += $$PWD/../../opencv/build/x86/vc11/lib/opencv_photo2411.lib
#else:win32:!win32-g++:CONFIG(debug, debug|release): PRE_TARGETDEPS += $$PWD/../../opencv/build/x86/vc11/lib/opencv_photo2411d.lib

#win32:CONFIG(release, debug|release): LIBS += -L$$PWD/../../opencv/build/x86/vc11/lib/ -lopencv_stitching2411
#else:win32:CONFIG(debug, debug|release): LIBS += -L$$PWD/../../opencv/build/x86/vc11/lib/ -lopencv_stitching2411d

#INCLUDEPATH += $$PWD/../../opencv/build/x86/vc11
#DEPENDPATH += $$PWD/../../opencv/build/x86/vc11

#win32-g++:CONFIG(release, debug|release): PRE_TARGETDEPS += $$PWD/../../opencv/build/x86/vc11/lib/libopencv_stitching2411.a
#else:win32-g++:CONFIG(debug, debug|release): PRE_TARGETDEPS += $$PWD/../../opencv/build/x86/vc11/lib/libopencv_stitching2411d.a
#else:win32:!win32-g++:CONFIG(release, debug|release): PRE_TARGETDEPS += $$PWD/../../opencv/build/x86/vc11/lib/opencv_stitching2411.lib
#else:win32:!win32-g++:CONFIG(debug, debug|release): PRE_TARGETDEPS += $$PWD/../../opencv/build/x86/vc11/lib/opencv_stitching2411d.lib

#win32:CONFIG(release, debug|release): LIBS += -L$$PWD/../../opencv/build/x86/vc11/lib/ -lopencv_superres2411
#else:win32:CONFIG(debug, debug|release): LIBS += -L$$PWD/../../opencv/build/x86/vc11/lib/ -lopencv_superres2411d

#INCLUDEPATH += $$PWD/../../opencv/build/x86/vc11
#DEPENDPATH += $$PWD/../../opencv/build/x86/vc11

#win32-g++:CONFIG(release, debug|release): PRE_TARGETDEPS += $$PWD/../../opencv/build/x86/vc11/lib/libopencv_superres2411.a
#else:win32-g++:CONFIG(debug, debug|release): PRE_TARGETDEPS += $$PWD/../../opencv/build/x86/vc11/lib/libopencv_superres2411d.a
#else:win32:!win32-g++:CONFIG(release, debug|release): PRE_TARGETDEPS += $$PWD/../../opencv/build/x86/vc11/lib/opencv_superres2411.lib
#else:win32:!win32-g++:CONFIG(debug, debug|release): PRE_TARGETDEPS += $$PWD/../../opencv/build/x86/vc11/lib/opencv_superres2411d.lib

#win32:CONFIG(release, debug|release): LIBS += -L$$PWD/../../opencv/build/x86/vc11/lib/ -lopencv_ts2411
#else:win32:CONFIG(debug, debug|release): LIBS += -L$$PWD/../../opencv/build/x86/vc11/lib/ -lopencv_ts2411d

#INCLUDEPATH += $$PWD/../../opencv/build/x86/vc11
#DEPENDPATH += $$PWD/../../opencv/build/x86/vc11

#win32-g++:CONFIG(release, debug|release): PRE_TARGETDEPS += $$PWD/../../opencv/build/x86/vc11/lib/libopencv_ts2411.a
#else:win32-g++:CONFIG(debug, debug|release): PRE_TARGETDEPS += $$PWD/../../opencv/build/x86/vc11/lib/libopencv_ts2411d.a
#else:win32:!win32-g++:CONFIG(release, debug|release): PRE_TARGETDEPS += $$PWD/../../opencv/build/x86/vc11/lib/opencv_ts2411.lib
#else:win32:!win32-g++:CONFIG(debug, debug|release): PRE_TARGETDEPS += $$PWD/../../opencv/build/x86/vc11/lib/opencv_ts2411d.lib

#win32:CONFIG(release, debug|release): LIBS +=  -L$$PWD/../../opencv/build/x86/vc11/lib/ -lopencv_video2411
#else:win32:CONFIG(debug, debug|release): LIBS += -L$$PWD/../../opencv/build/x86/vc11/lib/ -lopencv_video2411d

#INCLUDEPATH += $$PWD/../../opencv/build/x86/vc11
#DEPENDPATH += $$PWD/../../opencv/build/x86/vc11

#win32-g++:CONFIG(release, debug|release): PRE_TARGETDEPS += $$PWD/../../opencv/build/x86/vc11/lib/libopencv_video2411.a
#else:win32-g++:CONFIG(debug, debug|release): PRE_TARGETDEPS += $$PWD/../../opencv/build/x86/vc11/lib/libopencv_video2411d.a
#else:win32:!win32-g++:CONFIG(release, debug|release): PRE_TARGETDEPS += $$PWD/../../opencv/build/x86/vc11/lib/opencv_video2411.lib
#else:win32:!win32-g++:CONFIG(debug, debug|release): PRE_TARGETDEPS += $$PWD/../../opencv/build/x86/vc11/lib/opencv_video2411d.lib

#win32:CONFIG(release, debug|release): LIBS +=  -L$$PWD/../../opencv/build/x86/vc11/lib/ -lopencv_videostab2411
#else:win32:CONFIG(debug, debug|release): LIBS += -L$$PWD/../../opencv/build/x86/vc11/lib/ -lopencv_videostab2411d

#INCLUDEPATH += $$PWD/../../opencv/build/x86/vc11
#DEPENDPATH += $$PWD/../../opencv/build/x86/vc11

#win32-g++:CONFIG(release, debug|release): PRE_TARGETDEPS += $$PWD/../../opencv/build/x86/vc11/lib/libopencv_videostab2411.a
#else:win32-g++:CONFIG(debug, debug|release): PRE_TARGETDEPS += $$PWD/../../opencv/build/x86/vc11/lib/libopencv_videostab2411d.a
#else:win32:!win32-g++:CONFIG(release, debug|release): PRE_TARGETDEPS += $$PWD/../../opencv/build/x86/vc11/lib/opencv_videostab2411.lib
#else:win32:!win32-g++:CONFIG(debug, debug|release): PRE_TARGETDEPS += $$PWD/../../opencv/build/x86/vc11/lib/opencv_videostab2411d.lib
