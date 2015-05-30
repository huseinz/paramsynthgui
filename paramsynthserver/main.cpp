
#include "server.h"

int main(int argc, char *argv[])
{
    QCoreApplication a(argc, argv);

    MyServer q;
    //q.start();

    return a.exec();
}
