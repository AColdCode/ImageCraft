import QtQuick 2.15
import QtQuick.Controls 2.15
import QtQuick.Layouts 1.15

Item {
    width: parent.width / 3
    height: parent.height
    property var sharePage
    property var tabBar_currentIndex

    StackLayout {
        id: rightLayout
        height: parent.height
        width: parent.width
        currentIndex: tabBar_currentIndex

        Repeater {
            model: sharePage

            Item
            {
                Layout.fillWidth: true
                Layout.fillHeight: true
                Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
                property Item theStackL: null
                property ListModel layerListModel: null

                Rectangle {
                    color: "black"
                    width: parent.width - viewtags.width - 10
                    height: width
                    anchors.right: parent.right
                    clip: true

                    Image
                    {
                        id: homeTab
                        source: pixUrl_yuan
                        width: parent.width
                        height: parent.height
                        fillMode: Image.PreserveAspectFit
                        anchors.centerIn: parent
                    }
                }

                ListView
                {
                    id: viewtags
                    model: parent.layerListModel
                    height: parent.height
                    width: 100
                    delegate: Rectangle
                    {
                        property string pixUrl_: pixUrl
                        property bool isShow: true
                        height: 25
                        width: 100
                        radius: 20
                        color: viewtags.currentIndex === index ? "grey" : "#00000000"
                        clip: true

                        Row
                        {
                            spacing: 10
                            anchors
                            {
                                verticalCenter: parent.verticalCenter
                                left: parent.left
                            }
                            anchors.leftMargin: parent.radius / 4
                            Image
                            {
                                id: eyes
                                width: 20
                                height: width
                                source: isShow ? "qrc:/icon/icon/display.svg" : "qrc:/icon/icon/hide.svg"
                                sourceSize: Qt.size(32, 32)
                                scale: eyesHover.hovered ? 1.1 : 1
                                TapHandler
                                {
                                    onTapped:
                                    {
                                        theStackL.layers.itemAt(index).visible = !theStackL.layers.itemAt(index).visible
                                        isShow = !isShow
                                    }
                                }
                                HoverHandler
                                {
                                    id: eyesHover
                                    cursorShape: Qt.PointingHandCursor
                                }
                            }
                            Text
                            {
                                font.bold: viewtags.currentIndex === index ? true : false
                                scale: viewtags.currentIndex === index ? 1.1 : 1
                                text: pixUrl.substring(pixUrl.lastIndexOf("/") + 1)
                                color: "black"
                                Behavior on scale {
                                    NumberAnimation
                                    {
                                        duration: 200
                                        easing.type: Easing.InOutQuad
                                    }
                                }
                            }
                        }
                        TapHandler
                        {
                            onTapped:
                            {
                                homeTab.source = pixUrl_
                                viewtags.currentIndex = index
                            }
                        }
                    }
                }
                Component.onCompleted:
                {
                    Qt.callLater(function() //延迟赋值 防止stackL还没创建好当前Item
                    {
                        theStackL = tag.stackL.itemAt(index)
                        layerListModel = theStackL.layerModel
                    });
                }
            }
        }
    }
}
