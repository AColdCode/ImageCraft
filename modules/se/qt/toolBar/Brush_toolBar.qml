import QtQuick
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
    id: brush_toolBar
    anchors.fill: parent

    RowLayout{
        width: parent.width
        height: parent.height

        ComboBox {
            id: brush
            Layout.preferredWidth:parent.height*3
            model: ["画笔1","画笔2","画笔3"]

            Layout.fillWidth: true
            Layout.minimumWidth: 0

        }

        ToolSeparator { Layout.preferredHeight: parent.height}

        ComboBox {
            id: brush_size
            Layout.preferredWidth:parent.height*3
            model: ["画笔大小1","画笔大小2","画笔大小3"]

            Layout.fillWidth: true
            Layout.minimumWidth: 0

        }

        Button {
            id: brush_file
            Layout.preferredWidth:parent.height*3
            text: qsTr("画笔文件")

            Layout.fillWidth: true
            Layout.minimumWidth: parent.height
        }

        ToolSeparator {Layout.preferredHeight: parent.height}

        ComboBox {
            id: brush_color
            Layout.preferredWidth:parent.height*3
            model: ["颜色1","颜色2","颜色3"]

            Layout.fillWidth: true
            Layout.minimumWidth: 0

        }

        Button{
            id: brush_ban
            Layout.preferredWidth:parent.height*3
            text: qsTr("画笔禁用")

            Layout.fillWidth: true
            Layout.minimumWidth: parent.height

        }

        ComboBox{
            id:brush_custom
            Layout.preferredWidth:parent.height*3
            model:["自定1","自定2","自定3"]

            Layout.fillWidth: true
            Layout.minimumWidth: 0

        }

        Label{
            text:"潮湿:"

        }

        ComboBox{
            id:brush_damp
            Layout.preferredWidth:parent.height*3
            model:["80%","90%","30%"]

            Layout.fillWidth: true
            Layout.minimumWidth: 0

        }

        Label{
            text:"载入:"

        }

        ComboBox{
            id:brush_load
            Layout.preferredWidth:parent.height*3
            model:["50%","60%","30%"]

            Layout.fillWidth: true
            Layout.minimumWidth: 0

        }

        Label{
            text:"混乱:"

        }

        ComboBox{
            id:brush_blend
            Layout.preferredWidth:parent.height*3
            model:["20%","30%","40%"]

            Layout.fillWidth: true
            Layout.minimumWidth: 0

        }

        Label{
            text:"流量:"
        }

        ComboBox{
            id:brush_flow
            Layout.preferredWidth:parent.height*3
            model:["0","10%","30%"]

            Layout.fillWidth: true
            Layout.minimumWidth: 0

        }

        Button{
            id: brush_wobuzhidao
            Layout.preferredWidth:parent.height*3
            text: qsTr("我不知道")

            Layout.fillWidth: true
            Layout.minimumWidth: parent.height

        }

        Button{
            id: brush_wobuzhidao2
            Layout.preferredWidth:parent.height*3
            text: qsTr("我不知道2")

            Layout.fillWidth: true
            Layout.minimumWidth: parent.height

        }

        ComboBox{
            id:brush_wobuzhidao3
            Layout.preferredWidth:parent.height*3
            model:["0","10%","30%"]

            Layout.fillWidth: true
            Layout.minimumWidth: 0

        }

        ComboBox{
            id:setting
            Layout.preferredWidth:parent.height*3
            model:["shezhi1","shezhi2","shezhi3"]

            Layout.fillWidth: true
            Layout.minimumWidth: 0

        }

        Label{
            text:"角度:"
            Image {
                id: angle
                source: ""
            }
        }

        ComboBox{
            id:brush_angle
            Layout.preferredWidth:parent.height*3
            model:["0°","30°","60°"]

            Layout.fillWidth: true
            Layout.minimumWidth: 0

        }

        CheckBox{
            id:brush_sample_all_layers
            Layout.preferredWidth:parent.height*5
            text: "对所有图层取样"

            Layout.fillWidth: true
            Layout.minimumWidth: parent.height

        }

        Button{
            id: brush_wobuzhidao4
            Layout.preferredWidth:parent.height*3
            text: qsTr("我不知道4")

            Layout.fillWidth: true
            Layout.minimumWidth: parent.height

        }

    }


}
// }
// }


