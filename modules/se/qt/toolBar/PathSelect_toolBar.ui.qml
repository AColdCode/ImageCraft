import QtQuick
import QtQuick.Controls
import QtQuick.Layouts

// Item {
//     ToolBar {
//         id: toolBar
//         x: 8
//         y: 8
//         width: 1500
//         height: 26
Item {
    id: pathSelect_toolBar
    anchors.fill: parent
    RowLayout{
        width: parent.width
        height: parent.height
        spacing: 5

        ComboBox {
            id: comboBox
            Layout.preferredWidth:parent.height*3
            model: ["111", "222", "333"]

            Layout.fillWidth: true
            Layout.minimumWidth: 0
        }

        ToolSeparator {
            Layout.preferredHeight: parent.height
        }

        Label {
            id: label
            text: "选择: "
        }

        ComboBox {
            id: comboBox1
            Layout.preferredWidth:parent.height*3
            model: ["所有图层", "111", "222", "333"]

            Layout.fillWidth: true
            Layout.minimumWidth: parent.height
        }

        ToolSeparator {
            Layout.preferredHeight: parent.height
        }

        Label {
            id: label1
            text: "填充: "
        }

        Item {
            Layout.preferredWidth:parent.height*3
            Layout.preferredHeight: parent.height/1.5
            Rectangle {
                anchors.fill: parent
                border.color: "grey"
                Rectangle {
                    id: rect
                    anchors.centerIn: parent
                    width: parent.width - 4
                    height: parent.height - 4
                    color: "black"
                }
            }
            Layout.fillWidth: true
            Layout.minimumWidth: parent.height
        }

        Label {
            id: label2
            text: "描边: "
        }

        Item {
            Layout.preferredWidth:parent.height*3
            Layout.preferredHeight: parent.height/1.5
            Rectangle {
                anchors.fill: parent
                border.color: "grey"
                Rectangle {
                    id: rect1
                    anchors.centerIn: parent
                    width: parent.width - 4
                    height: parent.height - 4
                    color: "black"
                    Rectangle {
                        anchors.centerIn: parent
                        width: parent.width - 20
                        height: parent.height - 8
                        border.color: "white"
                        color: "grey"
                    }
                }
            }
            Layout.fillWidth: true
            Layout.minimumWidth: parent.height
        }

        ComboBox {
            id: comboBox2
            Layout.preferredWidth:parent.height*3
            enabled: false
            model: [" ", " ", " "]

            Layout.fillWidth: true
            Layout.minimumWidth: 0
        }

        ComboBox {
            id: comboBox3
            Layout.preferredWidth:parent.height*3
            enabled: false
            model: ["-----------", "111", "222"]

            Layout.fillWidth: true
            Layout.minimumWidth: 0
        }

        ToolSeparator {
            Layout.preferredHeight: parent.height
        }

        Label {
            id: w
            text: "W: "
        }

        Item {
            Layout.preferredWidth:parent.height*3
            Layout.preferredHeight: parent.height/1.5
            Rectangle {
                anchors.fill: parent
                border.color: "grey"
                Rectangle {
                    id: rect2
                    anchors.centerIn: parent
                    width: parent.width - 4
                    height: parent.height - 4
                    color: "black"
                }
            }

            Layout.fillWidth: true
            Layout.minimumWidth: parent.height
        }

        // Image {
        //     y: 2
        //     source: "image path"
        //     Layout.preferredHeight:parent.height
        //     Layout.preferredWidth:parent.height*3
        //     Text {
        //         text: "img"
        //     }

        //     Layout.fillWidth: true
        //     Layout.minimumWidth: parent.height
        // }

        Label {
            id: h
            text: "H: "
        }

        Item {
            Layout.preferredWidth:parent.height*3
            Layout.preferredHeight: parent.height/1.5
            Rectangle {
                anchors.fill: parent
                border.color: "grey"
                Rectangle {
                    id: rect3
                    anchors.centerIn: parent
                    width: parent.width - 4
                    height: parent.height - 4
                    color: "black"
                }
            }

            Layout.fillWidth: true
            Layout.minimumWidth: parent.height
        }

        ToolSeparator {
            Layout.preferredHeight: parent.height
        }

        Button {
            id: imageBtn
            Layout.preferredWidth:parent.height*3
            text: "img"

            Layout.fillWidth: true
            Layout.minimumWidth: parent.height
        }

        ToolSeparator {
            Layout.preferredHeight: parent.height
        }

        Button {
            id: imageBtn1
            Layout.preferredWidth:parent.height*3
            text: "img"

            Layout.fillWidth: true
            Layout.minimumWidth: parent.height
        }

        ToolSeparator {
            Layout.preferredHeight: parent.height
        }

        Button {
            id: imageBtn2
            Layout.preferredWidth:parent.height*3
            text: "img"

            Layout.fillWidth: true
            Layout.minimumWidth: parent.height
        }

        ToolSeparator {
            Layout.preferredHeight: parent.height
        }

        CheckBox {
            id: checkBox
            Layout.preferredWidth:parent.height*4
            enabled: false
            text: qsTr("对齐边缘")

            Layout.fillWidth: true
            Layout.minimumWidth: parent.height
        }

        ToolSeparator {
            Layout.preferredHeight: parent.height
        }

        Button {
            id: imageBtn3
            Layout.preferredWidth:parent.height*3
            text: "img"

            Layout.fillWidth: true
            Layout.minimumWidth: parent.height
        }

        CheckBox {
            id: checkBox1
            Layout.preferredWidth:parent.height*5
            enabled: false
            text: qsTr("约束路径拖动")

            Layout.fillWidth: true
            Layout.minimumWidth: parent.height
        }

        Item {
            Layout.fillWidth: true  // 添加一个空的Item填充剩余空间

            Layout.preferredWidth:700
        }
    }
}
//     }
// }
