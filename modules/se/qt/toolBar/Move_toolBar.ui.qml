import QtQuick 2.15
import QtQuick.Controls
import QtQuick.Layouts
// Item {
//     ToolBar {
//         id: toolBar
//         x: 0
//         y: 0
//         width: parent.width
//         height: 26
Item {
    id: move

    anchors.fill: parent
    RowLayout{
        width: parent.width
        height: parent.height
        spacing: 5

        // Image {
        //     source: "image path"
        //     height: parent.height
        //     Layout.preferredWidth:parent.height*3
        //     Text {
        //         text: "logo1"
        //     }
        // }

        ToolSeparator {
            Layout.preferredHeight: parent.height
        }
        CheckBox {
            id: checkBox1
            Layout.preferredWidth:parent.height*4
            text: qsTr("自动选择：")

            Layout.fillWidth: true
            Layout.minimumWidth: parent.height
        }

        ComboBox {
            id: comboBox
            Layout.preferredWidth:parent.height*3
            model: ["图层", "Second", "Third"]
            editable: true

            Layout.fillWidth: true
            Layout.minimumWidth: parent.height
        }
        ToolSeparator {
            Layout.preferredHeight: parent.height
        }
        CheckBox {
            id: changetool
            Layout.preferredWidth:parent.height*4
            text: qsTr("显示变换控件")

            Layout.fillWidth: true
            Layout.minimumWidth: parent.height
        }
        ToolSeparator {
            Layout.preferredHeight: parent.height
        }

        Button {
            id: left11
            Layout.preferredWidth:parent.height*3

            Image {
                source: "image path"
                anchors.fill: parent
            }
            text: "left"

            Layout.fillWidth: true
            Layout.minimumWidth: parent.height
        }
        Button {
            id: locatecenter
            Layout.preferredWidth:parent.height*3
            Image {
                source: "image path"
                anchors.fill: parent
            }
            text: "center"

            Layout.fillWidth: true
            Layout.minimumWidth: parent.height
        }
        Button {
            id: right11
            Layout.preferredWidth:parent.height*3
            Image {
                source: "image path"
                anchors.fill: parent
            }
            text: "right"

            Layout.fillWidth: true
            Layout.minimumWidth: parent.height
        }
        ToolSeparator {
            Layout.preferredHeight: parent.height
        }

        Button {
            id: toppp
            Layout.preferredWidth:parent.height*3
            Image {
                source: "image path"
                anchors.fill: parent
            }
            text: "top"

            Layout.fillWidth: true
            Layout.minimumWidth: parent.height
        }

        Button {
            id: acrosscenter
            Layout.preferredWidth:parent.height*3
            Image {
                source: "image path"
                anchors.fill: parent
            }
            text: "center"

            Layout.fillWidth: true
            Layout.minimumWidth: parent.height
        }

        Button {
            id: bottompading
            Layout.preferredWidth:parent.height*3
            Image {
                source: "image path"
                anchors.fill: parent
            }
            text: "bottom"

            Layout.fillWidth: true
            Layout.minimumWidth: parent.height
        }
        Button {
            id: verticalcenter
            Layout.preferredWidth:parent.height*3
            Image {
                source: "image path"
                anchors.fill: parent
            }
            text: "verticalcenter"

            Layout.fillWidth: true
            Layout.minimumWidth: parent.height
        }

        ToolSeparator {
            Layout.preferredHeight: parent.height
        }

        Button {
            id: more
            Layout.preferredWidth:parent.height*3
            text: qsTr("...")

            Layout.fillWidth: true
            Layout.minimumWidth: parent.height
        }
        ToolSeparator {
            Layout.preferredHeight: parent.height
        }

        Item {
            Layout.fillWidth: true
            Layout.preferredWidth: 800
        }
    }
}
//     }
// }
