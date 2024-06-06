import QtQuick
import QtQuick.Controls
import ImageLoader
import com.activectrl 1.0

Menu
{
    id: file
    width: 250
    title: qsTr("文件(&F)")


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
            // fileDialog.open()
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
        title: qsTr("最近打开文件(&T)")
    }



    MenuSeparator{}


    MyMenuItem
    {
        text: qsTr("关闭(&C)")
        sequence: "Ctrl+W"
        onTriggered:
        {
            console.log("关闭")
        }
    }

    MyMenuItem
    {
        text: qsTr("关闭全部")
        sequence: "Alt+Ctrl+W"
        onTriggered:
        {
            console.log("关闭全部")
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
            console.log("保存为")
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
