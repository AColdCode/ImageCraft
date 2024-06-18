#pragma once

#include <QObject>
#include <QQmlEngine>

class ToolCtrl : public QObject
{
    Q_OBJECT
    QML_SINGLETON
    QML_NAMED_ELEMENT(ToolCtrl)

    Q_PROPERTY(QString selectedTool READ selectedTool WRITE setSelectedTool NOTIFY
                   selectedToolChanged FINAL)
public:
    explicit ToolCtrl(QObject *parent = nullptr);
    QString selectedTool() const;
    void setSelectedTool(const QString &newSelectedTool);

signals:
    void selectedToolChanged();

private:
    QString m_selectedTool;
};
