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

        Button {
            id: logo1
            Layout.preferredWidth:parent.height*3
            Image {
                source: "image path"
                anchors.fill: parent
            }
            text: "logo1"

            Layout.fillWidth: true
            Layout.minimumWidth: parent.height
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

        Button {
            id: improvement
            Layout.preferredWidth:parent.height*3
            enabled: false
            text: qsTr("提升")

            Layout.fillWidth: true
            Layout.minimumWidth: parent.height
        }

        Button {
            id: division
            Layout.preferredWidth:parent.height*3
            enabled: false
            text: qsTr("划分...")

            Layout.fillWidth: true
            Layout.minimumWidth: parent.height
        }

        ToolSeparator {
            Layout.preferredHeight: parent.height
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
        Button {
            id: logo7
            Layout.preferredWidth:parent.height*3
            Image {
                source: "image path"
                anchors.fill: parent
            }
            text: "logo7"

            Layout.fillWidth: true
            Layout.minimumWidth: parent.height
        }
        Button {
            id: logo8
            Layout.preferredWidth:parent.height*3
            Image {
                source: "image path"
                anchors.fill: parent
            }
            text: "logo8"

            Layout.fillWidth: true
            Layout.minimumWidth: parent.height
        }
        Button {
            id: logo9
            Layout.preferredWidth:parent.height*3
            Image {
                source: "image path"
                anchors.fill: parent
            }
            text: "logo9"

            Layout.fillWidth: true
            Layout.minimumWidth: parent.height
        }

        ToolSeparator {
            Layout.preferredHeight: parent.height
        }


        Button {
            id: logo10
            Layout.preferredWidth:parent.height*3
            Image {
                source: "image path"
                anchors.fill: parent
            }
            text: "logo10"

            Layout.fillWidth: true
            Layout.minimumWidth: parent.height
        }
        Button {
            id: logo11
            Layout.preferredWidth:parent.height*3
            Image {
                source: "image path"
                anchors.fill: parent
            }
            text: "logo11"

            Layout.fillWidth: true
            Layout.minimumWidth: parent.height
        }
        Button {
            id: logo12
            Layout.preferredWidth:parent.height*3
            Image {
                source: "image path"
                anchors.fill: parent
            }
            text: "logo12"

            Layout.fillWidth: true
            Layout.minimumWidth: parent.height
        }
        Button {
            id: logo13
            Layout.preferredWidth:parent.height*3
            Image {
                source: "image path"
                anchors.fill: parent
            }
            text: "logo13"

            Layout.fillWidth: true
            Layout.minimumWidth: parent.height
        }

        ToolSeparator {
            Layout.preferredHeight: parent.height
        }

        Label {
            id: more
            text: "..."
        }
        ToolSeparator {
            Layout.preferredHeight: parent.height
        }

        Button {
            id: slice
            Layout.preferredWidth:parent.height*3
            enabled: false
            text: qsTr("隐藏自动切片")

            Layout.fillWidth: true
            Layout.minimumWidth: parent.height
        }
        ToolSeparator {
            Layout.preferredHeight: parent.height
        }
        Button {
            id: logo14
            Layout.preferredWidth:parent.height*3
            Image {
                source: "image path"
                anchors.fill: parent
            }
            text: "logo14"

            Layout.fillWidth: true
            Layout.minimumWidth: parent.height
        }
    }
}
//     }
// }
