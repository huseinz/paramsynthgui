#include "tablemodel.h"

TableModel::TableModel(QObject *parent)
    : QAbstractTableModel(parent)
{
    //load test data from file
    insertRows(0);
}

int TableModel::rowCount(const QModelIndex &parent) const
{
    Q_UNUSED(parent);
    return tableData.size();
}

//TODO remove hardcoded value
int TableModel::columnCount(const QModelIndex &parent) const
{
    Q_UNUSED(parent);
    return 7;
}

//returns the data at a given index
QVariant TableModel::data(const QModelIndex &index, int role) const
{
  //  if (!index.isValid())
    //    return QVariant();

    if (index.row() >= tableData.size() || index.row() < 0)
        return QVariant();

    if (role == Qt::DisplayRole) {
       TableEntry p = tableData.at(index.row());

        switch(index.column())
        {
            case 0: return p.simulationName;
            case 1: return p.jobStatus;
            case 2: return p.dateStarted;
            case 3: return p.dateCompleted;
            case 4: return p.executionTime;
            case 5: return "View";
            case 6: return p.resultData;
        }
    }
    return QVariant();
}

//defines horizontal header
QVariant TableModel::headerData(int section, Qt::Orientation orientation, int role) const
{
    if (role != Qt::DisplayRole)
        return QVariant();

    if (orientation == Qt::Horizontal) {
        switch (section) {
            case 0:
                return tr("Simulation");
            case 1:
                return tr("Status");
            case 2:
                return tr("Start Time");
            case 3:
                return tr("Completion Time");
            case 4:
                return tr("Execution Time");
            case 5:
                return tr("Result");

            default:
                return QVariant();
        }
    }
    return QVariant();
}

//inserts data into table model
bool TableModel::insertRows(int position, const QModelIndex &index)
{
    Q_UNUSED(index);

    QDir outputDir("output/");
    outputDir.setFilter(QDir::Files);
    QStringList files(outputDir.entryList());

    beginInsertRows(QModelIndex(), position, position + files.length());
    qDebug() << files.length() << "files read";

    for(int i = 0; i < files.length() ; i++){

        QFile f( "output/" + files[i]);

        if(!f.open(QFile::ReadOnly | QFile::Text))
            QMessageBox::information(0, "ERROR", f.errorString());

        QTextStream t(&f);

        QString simulationName = t.readLine();
        QString status = t.readLine();
        QString startTime = t.readLine();
        QString endTime = t.readLine();
        QString executionTime = t.readLine();
        QString result = t.readAll();


        TableEntry newEntry(
                simulationName,
                status,
                startTime,
                endTime,
                executionTime,
                result
                );

        tableData.insert(i, newEntry);

        f.close();
    }

    endInsertRows();
    return true;
}
