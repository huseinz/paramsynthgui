/** Defines the initial login window and initiates server connection. **/

#ifndef LOGINWINDOW_H
#define LOGINWINDOW_H

#include "network.h"
#include <QDialog>
#include <QCryptographicHash>

namespace Ui {
class LoginWindow;
}

class LoginWindow : public QDialog
{
    Q_OBJECT

public:
    explicit LoginWindow(QWidget *parent = 0);
    ~LoginWindow();

private slots:
    void on_loginButton_clicked();

    void on_localButton_clicked();

signals:
    void loggedIn();

private:
    Ui::LoginWindow *ui;
    int checkCredentials();
};

#endif // LOGINWINDOW_H
