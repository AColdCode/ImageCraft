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
    id: brush_toolBar
    anchors.fill: parent
    RowLayout{
        width: parent.width
        height: parent.height
        spacing: 5

        ComboBox {
            id: frame_choice
            Layout.preferredWidth:parent.height*3
            editable: true
            model: ["矩形图框","圆形图框"]

            Layout.fillWidth: true
            Layout.minimumWidth: parent.height
        }

        ToolSeparator {Layout.preferredHeight: parent.height}

        Button {
            id: frame_rectangle
            Layout.preferredWidth:parent.height*3
            text: qsTr("矩形图框")

            Layout.fillWidth: true
            Layout.minimumWidth: parent.height
        }

        Button {
            id: frame_circle
            Layout.preferredWidth:parent.height*3
            text: qsTr("圆形图框")

            Layout.fillWidth: true
            Layout.minimumWidth: parent.height
        }

        Item {
            Layout.fillWidth: true  // 添加一个空的Item填充剩余空间

            Layout.preferredWidth:1400
        }

    }


}



