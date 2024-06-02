import QtQuick
import QtQuick.Controls

Menu
{
    width: 250
    title: qsTr("选择(&S)")

    MyMenuItem
    {
        text: qsTr("全部(&A)")
        sequence: "Ctrl+A"
        onTriggered:
        {
            console.log("全部")
        }
    }

    MyMenuItem
    {
        text: qsTr("取消选择(&D)")
        sequence: "Ctrl+D"
        onTriggered:
        {
            console.log("取消全部")
        }
    }

    MyMenuItem
    {
        text: qsTr("重新选择(&E)")
        sequence: "Shift+Ctrl+D"
        onTriggered:
        {
            console.log("重新选择")
        }
    }


    MenuSeparator{}


    MyMenuItem
    {
        text: qsTr("所用图层(&L)")
        sequence: "Alt+Ctrl+A"
        onTriggered:
        {
            console.log("所用图层")
        }
    }

    MyMenuItem
    {
        text: qsTr("取消选择图层(&S)")
        onTriggered:
        {
            console.log("所用图层")
        }
    }


    MenuSeparator{}


    MyMenuItem
    {
        text: qsTr("调整边缘(&F)")
        sequence: "Alt+Ctrl+R"
        onTriggered:
        {
            console.log("调整边缘")
        }
    }
}
