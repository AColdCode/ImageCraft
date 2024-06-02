#include "activectrl.h"

ActiveCtrl::ActiveCtrl(QObject *parent)
    : QObject{parent}
{}

ActiveCtrl *ActiveCtrl::singleton()
{
    ActiveCtrl *activeCtrl = new ActiveCtrl;
    return activeCtrl;
}

void ActiveCtrl::newFile() {}
