#include "mainwindow.h"
#include "ui_mainwindow.h"

MainWindow::MainWindow(QWidget *parent) :
    QMainWindow(parent),
    ui(new Ui::MainWindow)
{
    ui->setupUi(this);

    statusLabel = new QLabel(" Ready");
    statusLabel->setMinimumSize(statusLabel->sizeHint());
    statusBar()->addWidget(statusLabel);

    ui->tableView->setModel(new TableModel());
    ui->tableView->setColumnHidden(6,true);
    ui->tableView->resizeColumnsToContents();
    ui->tableView->horizontalHeader()->setDefaultAlignment(Qt::AlignLeft);

    connect(ui->tableView, SIGNAL(clicked(const QModelIndex &)), this, SLOT(onTableClicked(const QModelIndex &)));
}

MainWindow::~MainWindow()
{
    delete ui;
}

void MainWindow::on_actionQuit_triggered()
{
    QApplication::quit();
}

void MainWindow::on_actionAbout_triggered()
{
        statusBar()->showMessage("Welcome.",2000);
    QMessageBox::about(this, tr("About Parameter Synthesis"),
                             tr("A preliminary client designed to view and perform parameter synthesis calculations.\n\n5/24/2015"));
}

//TODO
void MainWindow::on_actionSubmit_a_new_job_triggered()
{
    newJobWindow = new NewParamSynthJob(this);
    newJobWindow->exec();
    delete newJobWindow;
}

void MainWindow::onTableClicked(const QModelIndex& index){

    if(index.isValid() && index.column() == 5){

        QModelIndex result = index.model()->index(index.row(), index.column() + 1 );
        QMessageBox::about(this, "View", result.data().toString());
        //qDebug() << result.data().toString();
    }
}

void MainWindow::on_refreshButton_clicked()
{
     ui->tableView->setModel(new TableModel());
}
