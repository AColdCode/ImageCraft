/*
 * 添加给MenuItem添加快捷键功能
 * 如果MenuItem设置了快捷键 将快捷键显示在text之后
 * sequence: "Ctrl+O"
 */

import QtQuick
import QtQuick.Controls

MenuItem
{
    id: item
    property string sequence
    property string title

    Shortcut
    {
        id: shortcut
        sequence: item.sequence
        onActivated:
        {
            item.triggered()
        }
    }

    Row
    {
        id: row
        spacing: 10
        width: parent.width
        height: 40  // 根据需要调整高度
        anchors.top: parent.top
        anchors.topMargin: 5

        Text
        {
            id: ti
            text: item.title
            verticalAlignment: Text.AlignVCenter
            leftPadding: 20
        }

        Item
        {
            id: spacer
            width: parent.width - ti.width - se.width - row.spacing * 2
            height: parent.height
        }

        Text
        {
            id: se
            text: item.sequence
            color: "white"
            rightPadding: 20
            verticalAlignment: Text.AlignVCenter
        }
    }
}

