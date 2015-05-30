#ifndef SERVER_H
#define SERVER_H

#include <QCoreApplication>
#include <QObject>
#include <QtNetwork/QTcpSocket>
#include <QtNetwork/QTcpServer>
#include <QDebug>
#include <QThread>
#include <QDataStream>

class MyServer : public QObject
{
    Q_OBJECT
    public:
        explicit MyServer(QObject* parent = 0);
        void start();

    signals:
        void readyRead();

    public slots:
        void newConnection();
        void readyReadSlot();
        void disconnected();

    private:
        QTcpServer *server;
};

#endif // SERVER_H
