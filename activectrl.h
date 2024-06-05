#pragma once

#include <QObject>
#include <QQmlEngine>
#include "editor.h"

class ActiveCtrl : public QObject
{
    Q_OBJECT

    Q_PROPERTY(QObject* dialogBox READ dialogBox WRITE setDialogBox NOTIFY dialogBoxChanged FINAL)
    Q_PROPERTY(Editor* currentEditor READ currentEditor WRITE setCurrentEditor NOTIFY
                   currentEditorChanged FINAL)
public:
    static ActiveCtrl* singleton();

    ~ActiveCtrl();

    Q_INVOKABLE void newFile();
    Q_INVOKABLE void open();

    QObject* dialogBox() const;
    void setDialogBox(QObject* newDialogBox);

    Editor* currentEditor() const;
    void setCurrentEditor(Editor* newCurrentEditor);

signals:

    void dialogBoxChanged();

    void currentEditorChanged();

private:
    explicit ActiveCtrl(QObject* parent = nullptr);

    static ActiveCtrl* m_instance;

    Editor* m_currentEditor = nullptr;
    QObject* m_dialogBox = nullptr;
};
