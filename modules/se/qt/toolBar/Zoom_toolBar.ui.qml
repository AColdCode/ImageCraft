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
    id: toolBar
    anchors.fill: parent

    RowLayout {
        width: parent.width
        height: parent.height
        spacing:5

        Button {
            id: imageBtn
            Layout.preferredWidth: parent.height*3
            text: "img"

            Layout.fillWidth: true
            Layout.minimumWidth: parent.height
        }

        ToolSeparator {
            Layout.preferredHeight: parent.height
        }

        Button {
            id: imageBtn1
            Layout.preferredWidth: parent.height*3
            text: "img"

            Layout.fillWidth: true
            Layout.minimumWidth: parent.height
        }

        Button {
            id: imageBtn2
            Layout.preferredWidth: parent.height*3
            text: "img"

            Layout.fillWidth: true
            Layout.minimumWidth: parent.height
        }

        ToolSeparator {
            Layout.preferredHeight: parent.height
        }

        CheckBox {
            id: checkBox
            Layout.preferredWidth: parent.height*6.2
            text: "调整窗口大小以满屏显示"

            Layout.fillWidth: true
            Layout.minimumWidth: 0
        }

        CheckBox {
            id: checkBox1
            Layout.preferredWidth: parent.height*4
            text: "缩放所有窗口"

            Layout.fillWidth: true
            Layout.minimumWidth: 0
        }


        CheckBox {
            id: checkBox2
            Layout.preferredWidth: parent.height*3
            enabled: false
            text: "细微缩放"

            Layout.fillWidth: true
            Layout.minimumWidth: 0
        }

        Button {
            id: btn
            Layout.preferredWidth: parent.height*3
            enabled: false
            text: "100%"

            Layout.fillWidth: true
            Layout.minimumWidth: parent.height
        }

        Button {
            id: btn1
            Layout.preferredWidth: parent.height*3
            enabled: false
            text: "合适屏幕"

            Layout.fillWidth: true
            Layout.minimumWidth: parent.height
        }


        Button {
            id: btn2
            Layout.preferredWidth: parent.height*3
            enabled: false
            text: "填充屏幕"

            Layout.fillWidth: true
            Layout.minimumWidth: parent.height
        }

        Item {
            Layout.fillWidth: true
            Layout.preferredWidth: 900
        }
    }
}

//     }
// }
