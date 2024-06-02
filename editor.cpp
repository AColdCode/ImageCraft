#include "editor.h"
#include <QBuffer>
#include <QImageReader>

Editor::Editor(QObject *parent)
    : QObject{parent}
{
    // m_image = new QImage(this);
}

QImage Editor::image() const
{
    return m_image;
}

void Editor::setImage(QImage newImage)
{
    if (m_image == newImage)
        return;
    m_image = newImage;
    emit imageChanged();
}

void Editor::openImage(const QString &path)
{
    m_path = QString(QUrl(path).toLocalFile());
    m_image.load(m_path);
    emit imageChanged();
}

QString Editor::imageToBase64() const
{
    QByteArray byteArray;
    QBuffer buffer(&byteArray);
    buffer.open(QIODevice::WriteOnly);
    m_image.save(&buffer, "PNG");
    return QString::fromLatin1(byteArray.toBase64().data());
}

QString Editor::path() const
{
    return m_path;
}

void Editor::setPath(const QString &newPath)
{
    if (m_path == newPath)
        return;
    m_path = newPath;
    emit pathChanged();
}
