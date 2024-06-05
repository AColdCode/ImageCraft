import QtQuick
import QtQuick.Controls
import QtQuick.Layouts

Item {
    id: cloneStamp_toolBar
    anchors.fill: parent
    RowLayout{
        width: parent.width
        height: parent.height

        ComboBox {
            id: cloneStamp
            Layout.preferredWidth:parent.height*3
            model: ["仿制图章1","仿制图章2"]

            Layout.fillWidth: true
            Layout.minimumWidth: parent.height
        }

        ToolSeparator {Layout.preferredHeight: parent.height}

        ComboBox {
            id: cloneStamp_size
            Layout.preferredWidth:parent.height*3
            model: ["仿制图章大小1","仿制图章大小2","仿制图章大小3"]

            Layout.fillWidth: true
            Layout.minimumWidth: parent.height
        }

        Button {
            id: cloneStam_file
            Layout.preferredWidth:parent.height*3
            text: qsTr("仿制图章文件")

            Layout.fillWidth: true
            Layout.minimumWidth: parent.height
        }

        ToolSeparator {Layout.preferredHeight: parent.height}

        Label{
            text:"模式:"
        }

        ComboBox {
            id: cloneStamp_mode
            Layout.preferredWidth:parent.height*3
            model: ["正常","正常2","正常3"]

            Layout.fillWidth: true
            Layout.minimumWidth: parent.height
        }

        Label{
            text:"不透明度:"
        }

        ComboBox{
            id:cloneStamp_opacity
            Layout.preferredWidth:parent.height*3
            model:["80%","90%","100%"]

            Layout.fillWidth: true
            Layout.minimumWidth: parent.height
        }

        Button{
            id: cloneStamp_wobuzhidao
            Layout.preferredWidth:parent.height*3
            text: qsTr("我不知道")

            Layout.fillWidth: true
            Layout.minimumWidth: parent.height
        }

        Label{
            text:"流量:"
        }

        ComboBox{
            id:cloneStamp_flow
            Layout.preferredWidth:parent.height*3
            model:["0","10%","100%"]

            Layout.fillWidth: true
            Layout.minimumWidth: parent.height
        }

        Button{
            id: cloneStamp_wobuzhidao2
            Layout.preferredWidth:parent.height*3
            text: qsTr("我不知道2")

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
            id:cloneStamp_angle
            width: parent.height*3
            height: parent.height
            model:["0°","30°","60°"]

            Layout.fillWidth: true
            Layout.minimumWidth: parent.height
        }

        ToolSeparator {Layout.preferredHeight: parent.height}

        CheckBox{
            id:cloneStamp_alignment
            text: "对齐"

            Layout.fillWidth: true
            Layout.minimumWidth: parent.height
        }

        ToolSeparator {Layout.preferredHeight: parent.height}

        Label{
            text: "样本:"
        }

        ComboBox{
            id:cloneStamp_sample
            Layout.preferredWidth:parent.height*3
            model: ["当前图层"]

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

        ToolSeparator {Layout.preferredHeight: parent.height}

        Button{
            id: cloneStamp_wobuzhidao5
            Layout.preferredWidth:parent.height*3
            text: qsTr("我不知道5")

            Layout.fillWidth: true
            Layout.minimumWidth: parent.height
        }

    }

}


