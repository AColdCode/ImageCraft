import QtQuick 2.15
import QtQuick.Controls
import QtQuick.Layouts

// Item {
//     ToolBar {
//         id: toolbar
//         x: 0
//         y: 0
//         width: parent.width
//         height: 26
Item {
    id: lasso

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
        //         text: "top"
        //     }
        // }

        ToolSeparator {
            Layout.preferredHeight: parent.height
        }

        Button {
            id: logo2
            Layout.preferredWidth:parent.height*3
            Image {
                source: ""
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
                source: ""
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
                source: ""
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
                source: ""
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
            id: eclosion
            text: qsTr("羽化：")
        }

        ComboBox {
            id: elc
            Layout.preferredWidth: parent.height*2
            model: ["0像素", "222", "333"]

            Layout.fillWidth: true
            Layout.minimumWidth: 0

        }

        CheckBox {
            id: deletion
            text: qsTr("消除锯齿")
            Layout.preferredWidth: parent.height*3

            Layout.fillWidth: true
            Layout.minimumWidth: parent.height

        }

        ToolSeparator {
            Layout.preferredHeight: parent.height
        }

        Label {
            id: widt
            text: qsTr("宽度:")
        }

        Rectangle {
            id: wd
            Layout.preferredWidth: parent.height*2
            Layout.preferredHeight: parent.height/1.5
            color: "grey"

            Layout.fillWidth: true
            Layout.minimumWidth: 0
        }
        Label {
            id: contrast
            text: qsTr("对比度:")
        }
        Rectangle {
            id: ct
            Layout.preferredWidth: parent.height*2
            Layout.preferredHeight: parent.height/1.5
            color: "grey"

            Layout.fillWidth: true
            Layout.minimumWidth: 0
        }
        Label {
            id: frequency
            text: qsTr("频率:")
        }
        Rectangle {
            id: freqr
            Layout.preferredWidth: parent.height*2
            Layout.preferredHeight: parent.height/1.5
            color: "grey"

            Layout.fillWidth: true
            Layout.minimumWidth: 0
        }

        ToolSeparator {
            Layout.preferredHeight: parent.height
        }
        Rectangle {
            id: logo6
            Layout.preferredWidth: parent.height*2
            Layout.preferredHeight: parent.height/1.5
            color: "grey"

            Layout.fillWidth: true
            Layout.minimumWidth: 0
        }
        ToolSeparator {
            Layout.preferredHeight: parent.height
        }
        Button {
            id: choiceandcover
            Layout.preferredWidth: parent.height*3
            enabled: false
            text: qsTr("选择并遮住...")

            Layout.fillWidth: true
            Layout.minimumWidth: 0
        }

        Item {
            Layout.fillWidth: true  // 添加一个空的Item填充剩余空间

            Layout.preferredWidth:700
        }
    }
}
//     }
// }
