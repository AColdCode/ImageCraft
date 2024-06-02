#pragma once

#include <QObject>
#include <QQmlEngine>

class ActiveCtrl : public QObject
{
    Q_OBJECT
    QML_ELEMENT
public:
    explicit ActiveCtrl(QObject *parent = nullptr);

    static ActiveCtrl *singleton();

    void newFile();

signals:
};
