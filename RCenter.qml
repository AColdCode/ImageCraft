import QtQuick
import QtQuick.Controls
import QtQuick.Layouts
Item
{
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

            Rectangle
            {
                color: "black"
                anchors.centerIn: parent

                Layout.maximumWidth: parent.width / 5 * 4
                Layout.minimumWidth: parent.width / 5 * 4
                Layout.maximumHeight: parent.height / 5 * 4
                Layout.minimumHeight: parent.height / 5 * 4
                clip: true
                Image
                {
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
