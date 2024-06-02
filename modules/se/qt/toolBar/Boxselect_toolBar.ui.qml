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
    id: boxselect
    anchors.fill: parent

    RowLayout{
        width: parent.width
        height: parent.height
        spacing: 5

        Label {
            id: more
            text: qsTr("...")
        }

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
            id: eclosion
            text: qsTr("羽化:")
        }

        Rectangle {
            id: rectangle
            Layout.preferredWidth: parent.height*2
            Layout.preferredHeight: parent.height/1.5
            color: " grey"

            Layout.fillWidth: true
            Layout.minimumWidth: 0

        }

        CheckBox {
            id: deletion
            text: qsTr("消除锯齿")
            Layout.preferredWidth:parent.height*3

            Layout.fillWidth: true
            Layout.minimumWidth: parent.height
        }

        ToolSeparator {
            Layout.preferredHeight: parent.height
        }

        Label {
            id: styles

            text: qsTr("样式:")
        }
        ComboBox {
            id: comboBoxstyles
            Layout.preferredWidth:parent.height*3


            model: ["正常", "111", "222"]

            Layout.fillWidth: true
            Layout.minimumWidth: 0
        }

        Label {
            id: wt
            text: qsTr("宽度:")
        }

        Rectangle {
            id: widt
            color: " grey"
            Layout.preferredWidth: parent.height*2
            Layout.preferredHeight: parent.height/1.5

            Layout.fillWidth: true
            Layout.minimumWidth: 0
        }
        Button {
            id: logo6
            Layout.preferredWidth:parent.height*3
            Image {
                source: "image path"
                anchors.fill: parent

            }
            text: "logo6"

            Layout.fillWidth: true
            Layout.minimumWidth: parent.height
        }
        Label {
            id: ht
            text: qsTr("高度:")
        }

        Rectangle {
            id: heit
            height: 15
            color: " grey"
            Layout.preferredWidth: parent.height*2
            Layout.preferredHeight: parent.height/1.5

            Layout.fillWidth: true
            Layout.minimumWidth: 0
        }

        ToolSeparator {
            Layout.preferredHeight: parent.height
        }
        Button {
            id: choiceandcover
            Layout.preferredWidth:parent.height*4
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
