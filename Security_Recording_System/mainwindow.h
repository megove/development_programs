#ifndef MAINWINDOW_H
#define MAINWINDOW_H

#include <QMainWindow>


#include <qtimer.h>
#include <qdatetime.h>
#include <qdir.h>


#include <iostream>
#include <string>
#include <stdio.h>
#include <Windows.h>
//#include <time.h>

#include "opencv2/opencv.hpp"
#include "opencv/cv.h"
#include "opencv/highgui.h"

using namespace std;
using namespace cv;

#define SECONDS_PER_DAY		86400
#define CAM_WIDTH			640
#define CAM_HEIGHT			480

namespace Ui {
class MainWindow;
}

class MainWindow : public QMainWindow
{
    Q_OBJECT

public:
    explicit MainWindow(QWidget *parent = 0);
    ~MainWindow();

private:
    Ui::MainWindow *ui;
    QTimer *timer, *captureTimer, *dateTimer;
    Mat im1, im2, imv1, imv2;
    VideoCapture cam1, cam2, cam3;
    VideoWriter out1, out2;
    bool startStop, cam1On, cam2On;
    QDir *workingPath;
    int day, month, year;
    int index, subindex;
    QString wpath;

public slots:
    void processFrame();
    void saveFrame();
    void makeVideo();
    void processDate();
    void startVideoInput();

private slots:
    void on_btnStartStop_clicked();
    void on_dropListMonTime_currentIndexChanged();
};

#endif // MAINWINDOW_H
