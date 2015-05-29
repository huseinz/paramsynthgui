/** Defines the main window. **/

//TODO implement header bar functionality
//Implement network stuff
//change icon code

#ifndef MAINWINDOW_H
#define MAINWINDOW_H

#include "tablemodel.h"
#include "newparamsynthjob.h"
#include <QMainWindow>
#include <QTableView>
#include <QStackedWidget>

namespace Ui {
class MainWindow;
}

class MainWindow : public QMainWindow
{
    Q_OBJECT

public:
    explicit MainWindow(QWidget *parent = 0);
    ~MainWindow();

private slots:
    void on_actionQuit_triggered();

    void on_actionAbout_triggered();

    void on_actionSubmit_a_new_job_triggered();

    void onTableClicked(const QModelIndex& );

    void on_refreshButton_clicked();

signals:
    void spawnNewJobWindow();

private:
    Ui::MainWindow *ui;
    QToolBar* toolbar;
    QLabel* statusLabel;
    NewParamSynthJob* newJobWindow;
    QTableView tableView;
};

#endif // MAINWINDOW_H
