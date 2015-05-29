#include "loginwindow.h"
#include "mainwindow.h"
#include "newparamsynthjob.h"
#include <QApplication>

int main(int argc, char *argv[])
{
    QApplication paramsynth(argc, argv);

    LoginWindow loginWindow;
    MainWindow mainWindow;

    //spawn main window when logged in
    QObject::connect(&loginWindow, SIGNAL(loggedIn()), &mainWindow, SLOT(show()));

    loginWindow.show();

    return paramsynth.exec();
}
