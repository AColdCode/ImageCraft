#include "activectrl.h"
#include <QDebug>

ActiveCtrl *ActiveCtrl::m_instance = nullptr;

ActiveCtrl::ActiveCtrl(QObject* parent)
    : QObject{parent}
{}

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

ActiveCtrl* ActiveCtrl::singleton()
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

void ActiveCtrl::newFile() {}

void ActiveCtrl::open()
{
    m_dialogBox->metaObject()->invokeMethod(m_dialogBox, "open", Qt::AutoConnection);
}
