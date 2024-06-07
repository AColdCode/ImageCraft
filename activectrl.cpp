#include "activectrl.h"
#include <QQuickItemGrabResult>

ActiveCtrl *ActiveCtrl::m_instance = nullptr;

ActiveCtrl::ActiveCtrl(QObject *parent)
    : QObject{parent}
{}

QString ActiveCtrl::savePath() const
{
    return m_savePath;
}

void ActiveCtrl::setSavePath(const QString &newSavePath)
{
    if (m_savePath == newSavePath)
        return;
    m_savePath = newSavePath;
    emit savePathChanged();
}

QObject *ActiveCtrl::savePathDialod() const
{
    return m_savePathDialod;
}

void ActiveCtrl::setSavePathDialod(QObject *newSavePathDialod)
{
    if (m_savePathDialod == newSavePathDialod)
        return;
    m_savePathDialod = newSavePathDialod;
    emit savePathDialodChanged();
}

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
    if (!m_currentLayer) {
        return;
    }
    if (m_savePath.isEmpty()) {
        saveAs();
    } else {
        QQuickItem *quickItem = qobject_cast<QQuickItem *>(m_currentLayer);
        if (quickItem) {
            QSharedPointer<QQuickItemGrabResult> grabResult = quickItem->grabToImage();
            QObject::connect(grabResult.data(), &QQuickItemGrabResult::ready, [=, this]() {
                QImage image = grabResult->image();
                if (image.save(m_savePath)) {
                    qDebug() << "Save success to: " << m_savePath;
                } else {
                    qDebug() << "Save failure!!";
                }
            });
        } else {
            qDebug() << m_currentEditor << " is not a QQuickItem type!!";
        }
    }
}

void ActiveCtrl::saveAs()
{
    if (!m_currentLayer) {
        return;
    }
    m_savePathDialod->metaObject()->invokeMethod(m_savePathDialod, "open", Qt::DirectConnection);
}
