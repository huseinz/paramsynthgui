#ifndef NETWORK_H
#define NETWORK_H

#include <QString>
#include <QObject>
#include <QtNetwork/QTcpSocket>

class Network : QObject
{
    Q_OBJECT
public:
    Network();

    static int authenticate(QString username, QString passwordHash);
    enum loginReturnCode {ACCEPTED, ERR_INCORRECT, ERR_NORESPONSE};

private:
};

#endif // NETWORK_H
