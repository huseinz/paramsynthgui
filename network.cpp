#include "network.h"

Network::Network()
{
}

int Network::authenticate(QString username, QString passwordHash)
{
    QTcpSocket sock;

    sock.connectToHost("127.0.0.1", 9999);

    if(!sock.waitForConnected(5000))
    {
            qDebug() << "Error: " << sock.errorString();
            return ERR_NORESPONSE;
    }

    qDebug() << "Username:" << username;
    qDebug() << "Password hash:" << passwordHash;
    short usernamelength = username.length();
    short passwordHashlength = passwordHash.length();

    sock.write((const char*)&usernamelength);
    sock.write(username.toAscii());

    sock.write((const char*)&passwordHashlength);
    sock.write(passwordHash.toAscii());

    if(!sock.waitForReadyRead(5000))
        return false;

    QString response = sock.readAll();

    sock.close();

    if(response == "GoodGood"){
        qDebug() << "Login correct";
        return ACCEPTED;
    }
    qDebug() << "Login incorrect";
    return ERR_INCORRECT;
}
