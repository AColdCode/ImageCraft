import QtQuick
import QtQuick.Layouts
import QtQuick.Controls
import "modules/se/qt/menu"
import "modules/se/qt/toolBar"


ApplicationWindow
{
    width: 2000
    height: 1000
    visible: true
    title: qsTr("PS")
    color: "white"
    minimumWidth: 800  // 设置最小宽度为800像素
    minimumHeight:600

    menuBar: PsMenu
    {
        width: parent.width
        id: psMenu
        sharePage: l.sharePage
    }

    header: PsToolBar
    {
        id: psToolBar
        width: parent.width
    }

    //Content Area
    Row
    {
        width: parent.width
        height: parent.height
        LCenter
        {
            id: l
        }

        Rectangle
        {
            width: 1
            height: parent.height
            color: "grey"
        }


        RCenter
        {
            sharePage: l.sharePage
            tabBar_currentIndex: l.shareTab.currentIndex
        }
    }


}
