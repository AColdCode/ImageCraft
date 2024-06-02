import QtQuick
import QtQuick.Controls
import QtQuick.Layouts
import ImageLoader 1.0

Item
{
    id: lRoot
    property alias stackL: stackL
    width: parent.width / 3 * 2
    height: parent.height
    property alias sharePage: pageModel
    property alias shareTab: tabBar

    ListModel
    {
        id: pageModel
    }

    TabBar {
        id: tabBar
        width: parent.width
        height: 25

        Repeater {
            model: pageModel
            TabButton
            {
                property bool isHoverd: tabBarHover.hovered
                text:  pageName
                palette.buttonText: "black"
                height: parent.height
                width: 100 + cancel_btn.width * 2
                background: Rectangle
                {
                    implicitHeight: parent.height
                    color: isHoverd ? Qt.rgba(173 / 255, 216 / 255, 230 / 255, 0.5) : Qt.rgba(192/255, 192/255, 192/255, 1)
                    border.color: "grey"
                    Rectangle
                    {
                        implicitHeight: parent.height
                        implicitWidth: tabBar.currentIndex === index ? parent.width : 0
                        color: "white"
                        border.color: "grey"
                        Rectangle   //下边框
                        {
                            implicitHeight: 1
                            implicitWidth: parent.width - 2
                            anchors.left: parent.left
                            anchors.leftMargin: 1
                            anchors.bottom: parent.bottom
                            color: "white"
                        }
                    }
                }

                Rectangle
                {
                    id: cancel_btn
                    property bool isHoverd: cancel_btnHover.hovered
                    z: 1
                    width: 15
                    height: 15
                    radius: 15
                    color: isHoverd ?  "lightcoral" : "transparent"
                    anchors.verticalCenter: parent.verticalCenter
                    anchors.right: parent.right
                    anchors.rightMargin: 3
                    Rectangle
                    {
                        anchors.centerIn: parent
                        height: 8
                        width: 1
                        color: parent.isHoverd ? "white" : "grey"
                        rotation: 45
                    }
                    Rectangle
                    {
                        anchors.centerIn: parent
                        height: 8
                        width: 1
                        color: parent.isHoverd ? "white" : "grey"
                        rotation: -45
                    }

                    TapHandler
                    {
                        onTapped:
                        {
                            tabBar.removeItem(tabBar.takeItem(index))
                            pageModel.remove(index)
                        }
                    }

                    HoverHandler
                    {
                        id: cancel_btnHover
                    }
                }

                TapHandler
                {
                    onTapped:
                    {
                        tabBar.currentIndex = index
                    }
                }

                HoverHandler
                {
                    id: tabBarHover
                }
            }


        }
    }

    StackLayout
    {
        id: stackL
        anchors.top: tabBar.bottom
        height: parent.height - tabBar.height
        width: parent.width
        currentIndex: tabBar.currentIndex
        clip: true

        Repeater {
            model: pageModel

            Rectangle
            {
                color: "black"
                anchors.centerIn: parent

                Layout.maximumWidth: parent.width / 5 * 4
                Layout.minimumWidth: parent.width / 5 * 4
                Layout.maximumHeight: parent.height / 5 * 4
                Layout.minimumHeight: parent.height / 5 * 4
                clip: true
                EditorView
                {
                    anchors.centerIn: parent
                    width: parent.width - 50
                    height: parent.height - 50
                    Component.onCompleted:
                    {
                        editor.openImage(pixUrl_yuan)
                    }
                }
            }
        }
    }
}
