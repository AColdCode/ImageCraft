#pragma once

#include <QObject>
#include <QQmlEngine>
#include <QQuickItem>
#include "editor.h"

class ActiveCtrl : public QObject
{
    Q_OBJECT

    Q_PROPERTY(QObject* dialogBox READ dialogBox WRITE setDialogBox NOTIFY dialogBoxChanged FINAL)
    Q_PROPERTY(Editor* currentEditor READ currentEditor WRITE setCurrentEditor NOTIFY
                   currentEditorChanged FINAL)
    Q_PROPERTY(QObject* newDialogBox READ newDialogBox WRITE setNewDialogBox NOTIFY
                   newDialogBoxChanged FINAL)
public:
    static ActiveCtrl* singleton();

    ~ActiveCtrl();

    Q_INVOKABLE void open();
    Q_INVOKABLE void newImage();
    Q_INVOKABLE void save();

    QObject* dialogBox() const;
    void setDialogBox(QObject* newDialogBox);

    Editor* currentEditor() const;
    void setCurrentEditor(Editor* newCurrentEditor);

    QObject* newDialogBox() const;
    void setNewDialogBox(QObject* newNewDialogBox);

    QObject* currentLayer() const;
    void setCurrentLayer(QObject* newCurrentLayer);

signals:

    void dialogBoxChanged();

    void currentEditorChanged();

    void newDialogBoxChanged();

    void currentLayerChanged();

private:
    explicit ActiveCtrl(QObject* parent = nullptr);

    static ActiveCtrl* m_instance;

    Editor* m_currentEditor = nullptr;
    QObject* m_dialogBox = nullptr;
    QObject* m_newDialogBox = nullptr;
    QObject* m_currentLayer = nullptr;
    Q_PROPERTY(QObject* currentLayer READ currentLayer WRITE setCurrentLayer NOTIFY
                   currentLayerChanged FINAL)
};
