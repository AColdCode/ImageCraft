import QtQuick
import QtQuick.Controls
import QtCore
import ImageCraft 1.0

Menu
{
    id: file
    width: 250
    title: qsTr("文件(&F)")
    required property ListModel sharePage

    MyMenuItem
    {
        text: qsTr("新建(&N)")
        sequence: "Ctrl+N"
        onTriggered:
        {
            ActiveCtrl.newImage()
        }
    }

    MyMenuItem
    {
        text: qsTr("打开(&O)")
        sequence: "Ctrl+O"
        onTriggered:
        {
            ActiveCtrl.open()
        }
    }

    MyMenuItem
    {
        text: qsTr("在Bridge中浏览(&B)")
        sequence: "Alt+Ctrl+O"
        onTriggered:
        {
            console.log("在Bridge中浏览")
        }
    }

    Menu
    {
        id: recentFileMenu
        width: 200
        title: qsTr("最近打开文件(&T)")
        Repeater
        {
            model: ActiveCtrl.recentFiles
            MyMenuItem
            {
                text: modelData
                property ListModel sharePage: file.sharePage
                onTriggered:
                {
                    var fileName = text.substring(text.lastIndexOf("/") + 1) // 获取文件名
                    ActiveCtrl.addRecentFiles(text)
                    sharePage.append({ pageName: fileName,pixUrl_yuan: text})
                }

                HoverHandler
                {
                    id: recentFileHover
                }
                Component.onCompleted:
                {
                    recentFileMenu.width = Math.max(text.length * 7 + 10 + height, recentFileMenu.width)
                }

                Image
                {
                    width: parent.height
                    height: parent.height
                    anchors.top: parent.top
                    anchors.left: parent.right
                    anchors.leftMargin: - width
                    source: text
                    fillMode: Image.PreserveAspectFit
                    visible: recentFileHover.hovered
                }
            }
        }
    }



    MenuSeparator{}


    MyMenuItem
    {
        text: qsTr("关闭(&C)")
        sequence: "Ctrl+W"
        onTriggered:
        {
            ActiveCtrl.close()
        }
    }

    MyMenuItem
    {
        text: qsTr("关闭全部")
        sequence: "Alt+Ctrl+W"
        onTriggered:
        {
            ActiveCtrl.closeAll()
        }
    }

    MyMenuItem
    {
        text: qsTr("关闭并转到Bridge")
        sequence: "Shift+Ctrl+W"
        onTriggered:
        {
            console.log("关闭并转到Bridge")
        }
    }

    MyMenuItem
    {
        text: qsTr("保存(&S)")
        sequence: "Ctrl+S"
        onTriggered:
        {
            ActiveCtrl.save()
        }
    }

    MyMenuItem
    {
        text: qsTr("保存为(&A)")
        sequence: "Shift+Ctrl+S"
        onTriggered:
        {
            ActiveCtrl.saveAs()
        }
    }


    MenuSeparator{}


    MyMenuItem
    {
        text: qsTr("退出(&X)")
        sequence: "Ctrl+Q"
        onTriggered:
        {
            console.log("退出")
        }
    }
}
