import QtQuick
import QtQuick.Controls
import QtQuick.Layouts

// Item {
//     ToolBar {
//         id: toolBar
//         x: 8
//         y: 8
//         width: 1080
//         height: 26
Item {
    id: word_toolBar
    anchors.fill: parent
    RowLayout{
        width: parent.width
        height: parent.height
        spacing: 5

        Button {
            id: imageBtn
            Layout.preferredWidth: parent*3
            text: "img"
            Layout.fillWidth: true
            Layout.minimumWidth: parent.height
        }

        ToolSeparator {
            Layout.preferredHeight: parent
        }

        CheckBox {
            id: checkBox
            Layout.preferredWidth: parent*3
            text: "滚动所有窗口"

            Layout.fillWidth: true
            Layout.minimumWidth: parent.height
        }

        ToolSeparator {
            Layout.preferredHeight: parent

            Layout.fillWidth: true
            Layout.minimumWidth: parent.height
        }


        Button {
            id: btn
            Layout.preferredWidth: parent*3
            text: "100%"

            Layout.fillWidth: true
            Layout.minimumWidth: parent.height
        }

        Button {
            id: btn1
            Layout.preferredWidth: parent*3
            text: "适合屏幕"

            Layout.fillWidth: true
            Layout.minimumWidth: parent.height
        }

        Button {
            id: btn2
            Layout.preferredWidth: parent*3
            text: "填充屏幕"

            Layout.fillWidth: true
            Layout.minimumWidth: parent.height
        }

        ToolSeparator {
            Layout.preferredHeight: parent
        }

        Item {
            Layout.fillWidth: true
            Layout.preferredWidth: 1200
        }
    }
}
//     }
// }
