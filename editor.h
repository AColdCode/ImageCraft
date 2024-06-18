#pragma once

#include <QImage>
#include <QQmlEngine>

class Editor : public QObject
{
    Q_OBJECT
    QML_ELEMENT

    Q_PROPERTY(QImage image READ image WRITE setImage NOTIFY imageChanged FINAL)
    Q_PROPERTY(QString path READ path WRITE setPath NOTIFY pathChanged FINAL)
public:
    explicit Editor(QObject *parent = nullptr);

    ~Editor();

    QImage image() const;
    Q_INVOKABLE void setImage(QImage newImage);
    Q_INVOKABLE void openImage(const QString &path);

    // Q_INVOKABLE void moveImage(int dx, int dy);

    QString path() const;
    void setPath(const QString &newPath);

signals:

    void imageChanged();

    void pathChanged();

private:
    QImage m_image;
    QString m_path;
    QPoint m_position;
};
