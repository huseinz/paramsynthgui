/** QTableModel implementation. Defines table structure and functionality. **/

#ifndef TABLEMODEL_H
#define TABLEMODEL_H

#include "tableentry.h"

#include <QAbstractTableModel>
#include <QModelIndex>
#include <QFile>
#include <QTextStream>
#include <QMessageBox>
#include <QDebug>
#include <QDir>

class TableModel : public QAbstractTableModel
{
    Q_OBJECT
public:
    explicit TableModel(QObject *parent = 0);

    int rowCount(const QModelIndex &parent) const;
    int columnCount(const QModelIndex &parent) const;
    QVariant data(const QModelIndex &index, int role) const;
    QVariant headerData(int section, Qt::Orientation orientation, int role) const;
    bool insertRows(int position, const QModelIndex &index=QModelIndex());

signals:

public slots:

private:
    QList< TableEntry > tableData;
};

#endif // TABLEMODEL_H

//TODO Implement text file download
