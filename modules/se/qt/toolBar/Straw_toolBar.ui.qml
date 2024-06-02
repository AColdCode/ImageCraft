import QtQuick
import QtQuick.Controls
import QtQuick.Layouts
Item {
    id: straw_toolBar
    anchors.fill: parent
    RowLayout{
        width: parent.width
        height: parent.height
        spacing: 5

        ComboBox {
            id: straw
            Layout.preferredWidth:parent.height*3
            model: ["吸管1","吸管2","吸管3"]

            Layout.fillWidth: true
            Layout.minimumWidth: parent.height
        }

        ToolSeparator {
            Layout.preferredHeight: parent.height
        }

        Label{
            text: "取样大小"
        }
        ComboBox {
            id: sample_size
            Layout.preferredWidth:parent.height*3
            model: ["取样点1","取样点2"]

            Layout.fillWidth: true
            Layout.minimumWidth: parent.height
        }

        Label{
            text: "样本"
        }
        ComboBox {
            id: sample
            Layout.preferredWidth:parent.height*3
            model: ["样本1","样本2"]

            Layout.fillWidth: true
            Layout.minimumWidth: parent.height
        }

        ToolSeparator {
            Layout.preferredHeight: parent.height
        }

        CheckBox {
            id: sample_ring
            Layout.preferredWidth:parent.height*3
            text: qsTr("显示取样环")

            Layout.fillWidth: true
            Layout.minimumWidth: parent.height
        }

        Item {
            Layout.fillWidth: true  // 添加一个空的Item填充剩余空间

            Layout.preferredWidth:1000
        }

    }


}


