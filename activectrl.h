#pragma once

#include <QObject>
#include <QQmlEngine>
#include <QQuickItem>
#include "editor.h"

class ActiveCtrl : public QObject
{
    Q_OBJECT

    Q_PROPERTY(QObject* dialogBox READ dialogBox WRITE setDialogBox NOTIFY dialogBoxChanged FINAL)
    Q_PROPERTY(QString savePath READ savePath WRITE setSavePath NOTIFY savePathChanged FINAL)
    Q_PROPERTY(Editor* currentEditor READ currentEditor WRITE setCurrentEditor NOTIFY
                   currentEditorChanged FINAL)
    Q_PROPERTY(QObject* newDialogBox READ newDialogBox WRITE setNewDialogBox NOTIFY
                   newDialogBoxChanged FINAL)
    Q_PROPERTY(QObject* currentLayer READ currentLayer WRITE setCurrentLayer NOTIFY
                   currentLayerChanged FINAL)
    Q_PROPERTY(QObject* savePathDialod READ savePathDialod WRITE setSavePathDialod NOTIFY
                   savePathDialodChanged FINAL)
public:
    static ActiveCtrl* singleton();

    ~ActiveCtrl();

    Q_INVOKABLE void open();
    Q_INVOKABLE void newImage();
    Q_INVOKABLE void save();
    Q_INVOKABLE void saveAs();

    QObject* dialogBox() const;
    void setDialogBox(QObject* newDialogBox);

    Editor* currentEditor() const;
    void setCurrentEditor(Editor* newCurrentEditor);

    QObject* newDialogBox() const;
    void setNewDialogBox(QObject* newNewDialogBox);

    QObject* currentLayer() const;
    void setCurrentLayer(QObject* newCurrentLayer);

    QObject* savePathDialod() const;
    void setSavePathDialod(QObject* newSavePathDialod);

    QString savePath() const;
    void setSavePath(const QString& newSavePath);

signals:

    void dialogBoxChanged();

    void currentEditorChanged();

    void newDialogBoxChanged();

    void currentLayerChanged();

    void savePathDialodChanged();

    void savePathChanged();

private:
    explicit ActiveCtrl(QObject* parent = nullptr);

    static ActiveCtrl* m_instance;

    QString m_savePath;

    Editor* m_currentEditor = nullptr;
    QObject* m_currentLayer = nullptr;

    QObject* m_dialogBox = nullptr;
    QObject* m_newDialogBox = nullptr;
    QObject* m_savePathDialod = nullptr;
};
