import QtQuick
import QtQuick.Controls
Menu{
    width: 300
    id:help
    title: qsTr("帮助(&H)")

    MyMenuItem{
        sequence: "Shift+F1"
        text:qsTr("这是什么？")
        onTriggered: {
            console.log("这是什么？已被点击")
        }
    }

    MenuSeparator{}

    MyMenuItem{
        text:qsTr("关于...")
        onTriggered: {
            console.log("关于已被点击")
        }
    }

    MyMenuItem{
        text:qsTr("更新日志")
        onTriggered: {
            console.log("更新日志已被点击")
        }
    }

    MyMenuItem{
        text:qsTr("加入我们")
        onTriggered: {
            console.log("加入我们已被点击")
        }
    }
}
