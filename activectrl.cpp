#include "activectrl.h"
#include <QQuickItemGrabResult>

ActiveCtrl *ActiveCtrl::m_instance = nullptr;

ActiveCtrl::ActiveCtrl(QObject *parent)
    : QObject{parent}
{}

QObject *ActiveCtrl::currentLayer() const
{
    return m_currentLayer;
}

void ActiveCtrl::setCurrentLayer(QObject *newCurrentLayer)
{
    if (m_currentLayer == newCurrentLayer)
        return;
    m_currentLayer = newCurrentLayer;
    emit currentLayerChanged();
}

QObject *ActiveCtrl::newDialogBox() const
{
    return m_newDialogBox;
}

void ActiveCtrl::setNewDialogBox(QObject *newNewDialogBox)
{
    if (m_newDialogBox == newNewDialogBox)
        return;
    m_newDialogBox = newNewDialogBox;
    emit newDialogBoxChanged();
}

Editor *ActiveCtrl::currentEditor() const
{
    return m_currentEditor;
}

void ActiveCtrl::setCurrentEditor(Editor *newCurrentEditor)
{
    if (m_currentEditor == newCurrentEditor)
        return;
    m_currentEditor = newCurrentEditor;
    emit currentEditorChanged();
}

QObject *ActiveCtrl::dialogBox() const
{
    return m_dialogBox;
}

void ActiveCtrl::setDialogBox(QObject *newDialogBox)
{
    if (m_dialogBox == newDialogBox)
        return;
    m_dialogBox = newDialogBox;
    emit dialogBoxChanged();
}

ActiveCtrl *ActiveCtrl::singleton()
{
    if (!m_instance) {
        m_instance = new ActiveCtrl();
    }
    return m_instance;
}

ActiveCtrl::~ActiveCtrl()
{
    if (m_instance) {
        delete m_instance;
        m_instance = nullptr;
    }
}

void ActiveCtrl::open()
{
    m_dialogBox->metaObject()->invokeMethod(m_dialogBox, "open", Qt::AutoConnection);
}

void ActiveCtrl::newImage()
{
    m_newDialogBox->metaObject()->invokeMethod(m_newDialogBox, "open", Qt::AutoConnection);
}

void ActiveCtrl::save()
{
    QQuickItem *quickItem = qobject_cast<QQuickItem *>(m_currentLayer);
    if (quickItem) {
        QSharedPointer<QQuickItemGrabResult> grabResult = quickItem->grabToImage();
        QObject::connect(grabResult.data(), &QQuickItemGrabResult::ready, [=]() {
            QImage image = grabResult->image();
            if (image.save("/run/media/root/Study/Images/test.png")) {
                qDebug() << "Save success to: "
                         << "/run/media/root/Study/Images/test.png";
            } else {
                qDebug() << "Save failure!!";
            }
        });
    } else {
        qDebug() << m_currentLayer;
        qDebug() << quickItem;
        qDebug() << "null";
    }
}
