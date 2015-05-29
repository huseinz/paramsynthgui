#ifndef NEWPARAMSYNTHJOB_H
#define NEWPARAMSYNTHJOB_H

#include <QDialog>

namespace Ui {
class NewParamSynthJob;
}

class NewParamSynthJob : public QDialog
{
    Q_OBJECT

public:
    explicit NewParamSynthJob(QWidget *parent = 0);
    ~NewParamSynthJob();

private:
    Ui::NewParamSynthJob *ui;
};

#endif // NEWPARAMSYNTHJOB_H
