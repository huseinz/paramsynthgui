/** Defines the data elements of each row in the table. **/

#ifndef TABLEENTRY_H
#define TABLEENTRY_H

#include <QString>
#include <QDateTime>

class TableEntry
{
public:
    TableEntry( QString simulationName,
                QString jobStatus,
                QString dateStarted,
                QString dateCompleted,
                QString executionTime,
                QString resultData
                );
    QString simulationName;
    QString jobStatus;
    QString dateStarted;
    QString dateCompleted;
    QString executionTime;
    QString resultData;
};

#endif // TABLEENTRY_H
