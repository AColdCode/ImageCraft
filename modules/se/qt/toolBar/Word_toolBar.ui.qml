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
        Item
        {
            id: word_toolBar
            anchors.fill: parent
            RowLayout{
                width: parent.width
                height: parent.height
                spacing: 5

                ComboBox
                {
                    id: comboBox
                    Layout.preferredWidth:parent.height*3
                    model: ["111", "222"]

                    Layout.fillWidth: true
                    Layout.minimumWidth: 0
                }

                ToolSeparator
                {
                    id: toolSeparator
                    Layout.preferredHeight: parent.height
                }

                Button
                {
                    id: imageBtn
                    Layout.preferredWidth:parent.height*3
                    text: "img"

                    Layout.fillWidth: true
                    Layout.minimumWidth: parent.height
                }

                ToolSeparator
                {
                    id: toolSeparator1
                    Layout.preferredHeight: parent.height
                }

                ComboBox
                {
                    id: comboBox1
                    model: ["Frick 0.3", "111", "222"]

                    Layout.fillWidth: true
                    Layout.minimumWidth: 0
                }

                ComboBox
                {
                    id: comboBox2
                    model: ["Regular", "111", "222"]

                    Layout.fillWidth: true
                    Layout.minimumWidth: 0
                }

                ToolSeparator
                {
                    Layout.preferredHeight: parent.height
                }

                Button
                {
                    id: imageBtn1
                    Layout.preferredWidth:parent.height*3
                    text: qsTr("img")

                    Layout.fillWidth: true
                    Layout.minimumWidth: parent.height
                }

                ComboBox
                {
                    id: comboBox3
                    model: ["77.58 点", "111", "222"]

                    Layout.fillWidth: true
                    Layout.minimumWidth: parent.height
                }

                Button
                {
                    id: imageBtn2
                    Layout.preferredWidth:parent.height*3
                    text: qsTr("img")

                    Layout.fillWidth: true
                    Layout.minimumWidth: parent.height
                }

                ComboBox
                {
                    id: comboBox4
                    model: ["平滑", "111", "222"]

                    Layout.fillWidth: true
                    Layout.minimumWidth: 0
                }

                ToolSeparator
                {
                    Layout.preferredHeight: parent.height
                }

                Button
                {
                    id: imageBtn3
                    Layout.preferredWidth:parent.height*3
                    text: qsTr("img")

                    Layout.fillWidth: true
                    Layout.minimumWidth: parent.height
                }

                Button
                {
                    id: imageBtn4
                    Layout.preferredWidth:parent.height*3
                    text: qsTr("img")

                    Layout.fillWidth: true
                    Layout.minimumWidth: parent.height
                }

                Button
                {
                    id: imageBtn5
                    Layout.preferredWidth:parent.height*3
                    text: qsTr("img")

                    Layout.fillWidth: true
                    Layout.minimumWidth: parent.height
                }

                ToolSeparator
                {
                    Layout.preferredHeight: parent.height
                }

                Button
                {
                    id: imageBtn6
                    Layout.preferredWidth:parent.height*3
                    text: qsTr("img")

                    Layout.fillWidth: true
                    Layout.minimumWidth: parent.height
                }

                ToolSeparator
                {
                    Layout.preferredHeight: parent.height
                }

                Button
                {
                    id: imageBtn7
                    Layout.preferredWidth:parent.height*3
                    text: qsTr("img")

                    Layout.fillWidth: true
                    Layout.minimumWidth: parent.height
                }

                ToolSeparator
                {
                    Layout.preferredHeight: parent.height
                }

                Button
                {
                    id: imageBtn8
                    Layout.preferredWidth:parent.height*3
                    text: qsTr("img")

                    Layout.fillWidth: true
                    Layout.minimumWidth: parent.height
                }

                ToolSeparator
                {
                    Layout.preferredHeight: parent.height
                }

                Item {
                    Layout.fillWidth: true  // 添加一个空的Item填充剩余空间

                    Layout.preferredWidth:700
                }
            }
        }
//     }
// }
