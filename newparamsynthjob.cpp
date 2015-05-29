#include "newparamsynthjob.h"
#include "ui_newparamsynthjob.h"

NewParamSynthJob::NewParamSynthJob(QWidget *parent) :
    QDialog(parent),
    ui(new Ui::NewParamSynthJob)
{
    ui->setupUi(this);
}

NewParamSynthJob::~NewParamSynthJob()
{
    delete ui;
}
