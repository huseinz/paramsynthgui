#include "loginwindow.h"
#include "ui_loginwindow.h"

LoginWindow::LoginWindow(QWidget *parent) :
    QDialog(parent),
    ui(new Ui::LoginWindow)
{
    ui->setupUi(this);
    ui->usernameEdit->setText("test");
    ui->passwordEdit->setEchoMode(QLineEdit::Password);
    ui->passwordEdit->setText("test");

}

LoginWindow::~LoginWindow()
{
    delete ui;
}

//login click handler
void LoginWindow::on_loginButton_clicked()
{
    switch(checkCredentials())
    {
        case Network::ACCEPTED:
            ui->statusLabel->setText("Login accepted. Fetching....");
            emit loggedIn();
            this->hide();
            break;
        case Network::ERR_INCORRECT:
            ui->statusLabel->setText("The username or password is incorrect.");
            break;
        case Network::ERR_NORESPONSE:
            ui->statusLabel->setText("The server failed to reply.");
            break;
        default:
            ui->statusLabel->setText("Login failed.");
            break;
    }
}

//verifies credentials and emits loggedIn() signal that spawns the main window
//TODO implement all the server stuff
int LoginWindow::checkCredentials()
{
    QString username = ui->usernameEdit->text();
    QString password = QString(QCryptographicHash::hash(ui->passwordEdit->text().toLatin1(),QCryptographicHash::Md5).toHex());

    return Network::authenticate(username, password);
}

void LoginWindow::on_localButton_clicked()
{
    emit loggedIn();
    this->hide();
}
