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
    id: choice

    anchors.fill: parent
    RowLayout{
        width: parent.width
        height: parent.height
        spacing: 5

        // Image {
        //     id: logo1

        //     source: "image path"
        //     height: parent.height
        //     width: 40
        //     Text {
        //         text: "logo1"
        //         anchors.fill: parent
        //     }
        // }

        ToolSeparator {
             Layout.preferredHeight: parent.height
        }


        Button {
            id: logo2
            Layout.preferredWidth:parent.height*3

            Image {
                source: "image path"
                anchors.fill: parent

            }
            text: "logo2"

            Layout.fillWidth: true
            Layout.minimumWidth: parent.height
        }
        Button {
            id: logo3
            Layout.preferredWidth:parent.height*3
            Image {
                source: "image path"
                anchors.fill: parent

            }
            text: "logo3"

            Layout.fillWidth: true
            Layout.minimumWidth: parent.height
        }
        Button {
            id: logo4
            Layout.preferredWidth:parent.height*3
            Image {
                source: "image path"
                anchors.fill: parent
            }
            text: "logo4"

            Layout.fillWidth: true
            Layout.minimumWidth: parent.height
        }
        Button {
            id: logo5
            Layout.preferredWidth:parent.height*3
            Image {
                source: "image path"
                anchors.fill: parent
            }
            text: "logo5"
            Layout.fillWidth: true
            Layout.minimumWidth: parent.height
        }

        ToolSeparator {
           Layout.preferredHeight: parent.height
        }


        Label {
            id: sample
            text: qsTr("取样大小：")
        }

        ComboBox {
            id: elc
            Layout.preferredWidth:parent.height*3
            model: ["取样点", "222", "333"]

            Layout.fillWidth: true
            Layout.minimumWidth: parent.height
        }

        Label {
            id: tolerance
            text: qsTr("容差：")
        }

        Rectangle {
            id: rectangle
            Layout.preferredWidth:parent.height*2
            Layout.preferredHeight: parent.height/1.5
            color: "grey"

            Layout.fillWidth: true
            Layout.minimumWidth: parent.height
        }

        CheckBox {
            id: deletion
            Layout.preferredWidth:parent.height*3
            text: qsTr("消除锯齿")

            Layout.fillWidth: true
            Layout.minimumWidth: parent.height
        }
        CheckBox {
            id: continuous
            Layout.preferredWidth:parent.height*3
            text: qsTr("连续")

            Layout.fillWidth: true
            Layout.minimumWidth: parent.height
        }
        CheckBox {
            id: sampletoall
            Layout.preferredWidth:parent.height*4.5
            text: qsTr("对所有图层取样")

            Layout.fillWidth: true
            Layout.minimumWidth: parent.height
        }

        ToolSeparator {
            Layout.preferredHeight: parent.height
        }

        Button {
            id: choicemain
            Layout.preferredWidth:parent.height*3
            enabled: false
            text: qsTr("选择主体")

            Layout.fillWidth: true
            Layout.minimumWidth: parent.height

        }
        Button {
            id: choiceandcover
            Layout.preferredWidth:parent.height*3
            enabled: false
            text: qsTr("选择并遮住...")

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
