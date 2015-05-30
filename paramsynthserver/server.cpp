#include "server.h"

class I : public QThread
{
public:
    static void sleep(unsigned long secs) {
        QThread::sleep(secs);
    }
    static void msleep(unsigned long msecs) {
        QThread::msleep(msecs);
    }
    static void usleep(unsigned long usecs) {
        QThread::usleep(usecs);
    }
};

MyServer::MyServer(QObject* parent)
    : QObject(parent)
{
        server = new QTcpServer(this);

        // whenever a user connects, it will emit signal
        connect(server, SIGNAL(newConnection()),
               this, SLOT(newConnection()));

        if(!server->listen(QHostAddress::Any, 9999))
        {
            qDebug() << "Server could not start";
        }
        else
        {
            qDebug() << "Server started!";
        }
}

void MyServer::newConnection()
{
    qDebug() << "Connection received!";
    QTcpSocket *clientSocket = server->nextPendingConnection();
    connect(clientSocket, SIGNAL(readyRead()), this, SLOT(readyReadSlot()));
    connect(clientSocket, SIGNAL(disconnected()), this, SLOT(disconnected()));
}

void MyServer::disconnected()
{
    qDebug() << "Connection closed!";
}

void MyServer::readyReadSlot()
{
    // need to grab the socket
    QTcpSocket *socket = (QTcpSocket*)sender();

        bool m_headerRead = false;
        int readsize = 0;

        while (socket->bytesAvailable() > 0) {
           if (! m_headerRead && socket->bytesAvailable() >= 1) {
             //read in header data and set readsize
             QByteArray header = socket->read(1);
             readsize = header[0];

             qDebug() << readsize;

             m_headerRead = true;

            }
           else if (m_headerRead && socket->bytesAvailable() >= readsize) {
              //read data here
              m_headerRead = false;

              QByteArray line = socket->read( readsize );

              qDebug() << line;

              if(readsize == 4 && line == "test")
                socket->write("Good");
              else if(readsize == 32 && line == "098f6bcd4621d373cade4e832627b4f6")
                socket->write("Good");
           }
        }
}
