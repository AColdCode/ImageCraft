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

            Item {
                Layout.fillWidth: true
                Layout.fillHeight: true
                Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter

                Rectangle {
                    color: "black"
                    width: parent.width / 5 * 4
                    height: parent.height / 5 * 4
                    anchors.centerIn: parent
                    clip: true

                    Image {
                        id: homeTab
                        source: pixUrl_yuan
                        width: parent.width - 50
                        height: parent.height - 50
                        fillMode: Image.PreserveAspectFit
                        anchors.centerIn: parent
                    }
                }
            }
        }
    }
}
