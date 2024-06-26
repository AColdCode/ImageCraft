#include "toolctrl.h"

ToolCtrl::ToolCtrl(QObject *parent)
    : QObject{parent}
{}

QString ToolCtrl::selectedTool() const
{
    return m_selectedTool;
}

void ToolCtrl::setSelectedTool(const QString &newSelectedTool)
{
    if (m_selectedTool == newSelectedTool)
        return;
    m_selectedTool = newSelectedTool;
    emit selectedToolChanged();
}
