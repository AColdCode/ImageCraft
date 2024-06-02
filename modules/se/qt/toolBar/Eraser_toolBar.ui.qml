import QtQuick
import QtQuick.Controls
import QtQuick.Layouts

Item {
    id: eraser_toolBar
    anchors.fill: parent
    RowLayout{
        width: parent.width
        height: parent.height

        ComboBox {
            id: eraser
            Layout.preferredWidth:parent.height*3
            model: ["仿制图章1","仿制图章2"]

            Layout.fillWidth: true
            Layout.minimumWidth: parent.height
        }

        ToolSeparator {Layout.preferredHeight: parent.height}

        ComboBox {
            id: eraser_size
            Layout.preferredWidth:parent.height*3
            model: ["仿制图章大小1","仿制图章大小2","仿制图章大小3"]

            Layout.fillWidth: true
            Layout.minimumWidth: parent.height
        }

        Button {
            id: eraser_file
            Layout.preferredWidth:parent.height*3
            text: qsTr("仿制图章文件")

            Layout.fillWidth: true
            Layout.minimumWidth: parent.height
        }

        ToolSeparator {height: parent.height}

        Label{
            text:"模式:"

        }

        ComboBox {
            id: eraser_mode
            Layout.preferredWidth:parent.height*3
            model: ["正常","正常2","正常3"]

            Layout.fillWidth: true
            Layout.minimumWidth: parent.height
        }

        Label{
            text:"不透明度:"
        }

        ComboBox{
            id:eraser_opacity
            width: parent.height*3
            height: parent.height
            model:["80%","90%","100%"]

            Layout.fillWidth: true
            Layout.minimumWidth: parent.height
        }

        Button{
            id: eraser_wobuzhidao
            width:parent.height*3
            height: parent.height
            text: qsTr("我不知道")

            Layout.fillWidth: true
            Layout.minimumWidth: parent.height
        }

        ToolSeparator {Layout.preferredHeight: parent.height}

        Label{
            text:"流量:"
        }

        ComboBox{
            id:eraser_flow
            width: parent.height*3
            height: parent.height
            model:["0","10%","100%"]

            Layout.fillWidth: true
            Layout.minimumWidth: parent.height
        }

        Button{
            id: eraser_wobuzhidao2
            width:parent.height*3
            height: parent.height
            text: qsTr("我不知道2")

            Layout.fillWidth: true
            Layout.minimumWidth: parent.height
        }

        ToolSeparator {Layout.preferredHeight: parent.height}

        Label{
            text:"平滑"
        }

        ComboBox{
            id:eraser_smooth
            Layout.preferredWidth:parent.height*3
            model:["0","10%","100%"]

            Layout.fillWidth: true
            Layout.minimumWidth: parent.height
        }

        ComboBox{
            id:eraser_setting
            Layout.preferredWidth:parent.height*3
            model:["0","10%","100%"]

            Layout.fillWidth: true
            Layout.minimumWidth: parent.height
        }

        ToolSeparator {Layout.preferredHeight: parent.height}

        Label{
            text:"角度:"
            Image {
                id: angle
                source: ""
            }
        }

        ComboBox{
            id:eraser_angle
            Layout.preferredWidth:parent.height*3
            model:["0°","30°","60°"]

            Layout.fillWidth: true
            Layout.minimumWidth: parent.height
        }

        ToolSeparator {Layout.preferredHeight: parent.height}

        CheckBox{
            id:erase_Wipe_onto_historical_records
            Layout.preferredWidth:parent.height*4
            text:"抹到历史记录"

            Layout.fillWidth: true
            Layout.minimumWidth: parent.height
        }

        Button{
            id: eraser_wobuzhidao3
            Layout.preferredWidth:parent.height*3
            text: qsTr("我不知道3")

            Layout.fillWidth: true
            Layout.minimumWidth: parent.height
        }

        Button{
            id: eraser_wobuzhidao4
            Layout.preferredWidth:parent.height*3
            text: qsTr("我不知道4")

            Layout.fillWidth: true
            Layout.minimumWidth: parent.height
        }

    }

}

