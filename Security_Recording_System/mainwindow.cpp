#include "mainwindow.h"
#include "ui_mainwindow.h"

MainWindow::MainWindow(QWidget *parent) :
    QMainWindow(parent),
    ui(new Ui::MainWindow)
{
    ui->setupUi(this);
    timer = new QTimer(this);
    captureTimer = new QTimer(this);
    dateTimer = new QTimer(this);
    workingPath = new QDir();
    index = subindex = 1;
    cam1On = cam2On = false;


    QDateTime dateTime = QDateTime::currentDateTime();
    day = dateTime.date().day();
    month = dateTime.date().month();
    year = dateTime.date().year();

    cam1.open(0);
    cam1.set(CV_CAP_PROP_FRAME_WIDTH, CAM_WIDTH);
    cam1.set(CV_CAP_PROP_FRAME_HEIGHT, CAM_HEIGHT);
    cam2.open(1);
    cam2.set(CV_CAP_PROP_FRAME_WIDTH, CAM_WIDTH);
    cam2.set(CV_CAP_PROP_FRAME_HEIGHT, CAM_HEIGHT);

    if(cam1.isOpened())
    {
        cam1On = true;
    }

    if(cam2.isOpened())
    {
        cam2On = true;
    }
    startStop = false;

    dateTimer->start(100);
    connect(dateTimer, SIGNAL(timeout()), this, SLOT(processDate()));
    connect(ui->dropListMonTime, SIGNAL(currentIndexChanged()), this, SLOT(on_dropListMonTime_currentIndexChanged));

    // Show path in path box
    wpath = workingPath->currentPath();
}

MainWindow::~MainWindow()
{
    delete ui;
}

void MainWindow::processFrame()
{
    if(cam1On)
        cam1 >> im1;

    if(cam2On)
        cam2 >> im2;


    if(!im1.empty())
    {
        cvtColor(im1, im1, CV_BGR2RGB);
        cvtColor(im1, im1, CV_RGB2GRAY);
        QImage qim1((uchar*)im1.data, im1.cols, im1.rows, im1.step, QImage::Format_Indexed8);
        ui->lblCam1->setPixmap(QPixmap::fromImage(qim1));
        ui->lblCam1->adjustSize();
    }

    if(!im2.empty())
    {
        cvtColor(im2, im2, CV_BGR2RGB);
        cvtColor(im2, im2, CV_RGB2GRAY);
        QImage qim2((uchar*)im2.data, im2.cols, im2.rows, im2.step, QImage::Format_Indexed8);
        ui->lblCam2->setPixmap(QPixmap::fromImage(qim2));
        ui->lblCam2->adjustSize();
    }
    return;
}

void MainWindow::saveFrame()
{
    // Write timestamp on image
    QTime time = QTime::currentTime();
    string t = (time.toString()).toStdString();
    int fontFace = FONT_HERSHEY_SCRIPT_SIMPLEX;
    double fontScale = 0.5;
    int thickness = 2;
    cv::Point textOrg(0, 20);
    cv::putText(im1, t, textOrg, fontFace, fontScale, Scalar::all(255), thickness,1);
    cv::putText(im2, t, textOrg, fontFace, fontScale, Scalar::all(255), thickness,1);

    string path1 = wpath.toStdString();
    string path2 = wpath.toStdString();
    path1.append(to_string(index) + "_Cam1_" + to_string(subindex) + ".jpg");
    path2.append(to_string(index) + "_Cam2_" + to_string(subindex) + ".jpg");
    index++;
    if(cam1On)
        imwrite(path1, im1);
    if(cam2On)
        imwrite(path2, im2);

}

void MainWindow::makeVideo()
{
    // Write videos
    int i =1;
    string ext = ".jpg";
    QString temp = workingPath->currentPath();


    while(1)
    {

        string path1 = wpath.toStdString();
        string path2 = wpath.toStdString();

        path1.append(to_string(i) + "_Cam1_" + to_string(subindex) + ext);
        path2.append(to_string(i) + "_Cam2_" + to_string(subindex) + ext);

        Mat r1 = imread(path1);
        Mat r2 = imread(path2);
        if(i != index && (r1.empty() || r2.empty()))
            ui->txtBoxStatus->setText("Empty image! or image not found");
        else if(i == index)
        {
            index = 1;
            break;
        }

        if(cam1On)
            out1 << r1;
        if(cam2On)
            out2 << r2;

        workingPath->setCurrent(wpath);
        workingPath->remove(QString::number(i) + "_Cam1_" + QString::number(subindex) + QString::fromStdString(ext));
        workingPath->remove(QString::number(i) + "_Cam2_" + QString::number(subindex) + QString::fromStdString(ext));

        i++;
    }

    workingPath->setCurrent(temp);
    subindex++;
    return;
}


void MainWindow::startVideoInput()
{
    // Show path in path box
    ui->txtBoxPath->setText(wpath);

    // Create directory /current/Video/Year/Month/Day/Img and /Vid
    QString yr, m, d;
    QDate dt = QDate::currentDate();

    day = dt.day();
    month = dt.month();
    year = dt.year();
    yr = QString::number(year);
    m = dt.shortMonthName(month);
    d = QString::number(day);

    wpath = workingPath->currentPath();
    workingPath->mkpath(wpath + "/Video/" + yr + "/" + m + "/" + d);
    wpath = wpath + "/Video/" + yr + "/" + m + "/" + d + "/";

    // Set up output videos
    int frame_width=   cam1.get(CV_CAP_PROP_FRAME_WIDTH);
    int frame_height=   cam1.get(CV_CAP_PROP_FRAME_HEIGHT);
    if(cam1On)
        out1.open(wpath.toStdString() + "VidCam1_" + to_string(subindex) + ".avi",808596553,1, Size(frame_width,frame_height),true);
    if(cam2On)
        out2.open(wpath.toStdString() + "VidCam2_" + to_string(subindex) + ".avi",808596553,1, Size(frame_width,frame_height),true);

    if (!out1.isOpened())
    {
        ui->txtBoxStatus->setText("Could not open the output video 1");
    }

    if (!out2.isOpened())
    {
        ui->txtBoxStatus->setText("Could not open the output video 2");
    }

    timer->start(20);
    captureTimer->start(ui->dropListMonTime->currentText().toInt() * 1000);
    return;
}


void MainWindow::processDate()
{
    QDateTime dateTime = QDateTime::currentDateTime();
    if( day != dateTime.date().day() ||  month != dateTime.date().month() || year != dateTime.date().year()) // date changed! close current video and create new one in new directory
    {
        day = dateTime.date().day();
        month = dateTime.date().month();
        year = dateTime.date().year();

        QString yr = QString::number(year);
        QString d = QString::number(day);
        QString m = dateTime.date().shortMonthName(month);

        // make an script and run another program with the path to the video and the names of the output
        makeVideo();

        wpath = workingPath->currentPath();
        workingPath->mkpath(wpath + "/Video/" + yr + "/" + m + "/" + d);
        wpath = wpath + "/Video/" + yr + "/" + m + "/" + d + "/";

        int frame_width=   cam1.get(CV_CAP_PROP_FRAME_WIDTH);
        int frame_height=   cam1.get(CV_CAP_PROP_FRAME_HEIGHT);
        if(cam1On)
            out1.open(wpath.toStdString() + "VidCam1_" + to_string(subindex) + ".avi",808596553,1, Size(frame_width,frame_height),true);
        if(cam2On)
            out2.open(wpath.toStdString() + "VidCam2_" + to_string(subindex) + ".avi",808596553,1, Size(frame_width,frame_height),true);

        if (!out1.isOpened())
        {
            ui->txtBoxStatus->setText(" Could not open the output video 1");
        }
        if (!out2.isOpened())
        {
            ui->txtBoxStatus->append(" Could not open the output video 2");
        }

    }

    ui->lblTimeStamp->setText(dateTime.toString());
    ui->lblTimeStamp->adjustSize();
    return;
}

void MainWindow::on_btnStartStop_clicked()
{
    startStop = !startStop;
    if(startStop)// start
    {
        ui->btnStartStop->setText("Stop");
        ui->btnStartStop->setStyleSheet("color: red");
        connect(timer, SIGNAL(timeout()), this, SLOT(processFrame()));
        connect(captureTimer, SIGNAL(timeout()), this, SLOT(saveFrame()));
        startVideoInput();
    }
    else
    {
        ui->btnStartStop->setText("Start");
        ui->btnStartStop->setStyleSheet("color: black");
        timer->stop();
        captureTimer->stop();
        disconnect(timer, SIGNAL(timeout()), this, SLOT(processFrame()));
        disconnect(captureTimer, SIGNAL(timeout()), this, SLOT(saveFrame()));
        makeVideo();
    }

    return;
}

void MainWindow::on_dropListMonTime_currentIndexChanged()
{
    captureTimer->stop();
    captureTimer->start(ui->dropListMonTime->currentText().toInt() * 1000);
    return;
}
