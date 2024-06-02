import QtQuick
import QtQuick.Controls

Menu {
    width: 300
    id:edit
    title: qsTr("编辑(&E)")

    MyMenuItem{
        sequence: "Ctrl+Z"
        text:qsTr("还原（&O)")
        onTriggered: {
            console.log("还原已被点击")
        }
    }

    MyMenuItem{
        sequence: "Shift+Ctrl+Z"
        text:qsTr("前进一步（&W)")
        onTriggered: {
            console.log("前进一步已被点击")
        }
    }

    MyMenuItem {
        sequence: "Alt+Ctrl+Z"
        text: qsTr("后退一步(&K)")
        onTriggered: {
            console.log("后退一步已被点击")
        }
    }
    MenuSeparator{} //间隔符

    MyMenuItem {
        sequence: "Shift+Ctrl+F"
        text: qsTr("渐隐(&D)...")
        onTriggered: {
            console.log("渐隐已被点击")
        }
    }
    MenuSeparator{} //间隔符

    MyMenuItem {
        sequence: "Ctrl+X"
        text: qsTr("剪切(&T)")
        onTriggered: {
            console.log("剪切已被点击")
        }
    }

    MyMenuItem {
        sequence: "Ctrl+C"
        text: qsTr("拷贝(&C)")
        onTriggered: {
            console.log("拷贝已被点击")
        }
    }

    MyMenuItem {
        sequence: "Ctrl+V"
        text: qsTr("粘贴(&P)")
        onTriggered: {
            console.log("粘贴已被点击")
        }
    }

    MyMenuItem {
        text: qsTr("清除(&E)")
        onTriggered: {
            console.log("清除已被点击")
        }
    }

    MenuSeparator{}

    MyMenuItem {
        sequence: "Shift+F5"
        text: qsTr("填充(&L)...")
        onTriggered: {
            console.log("填充已被点击")
        }
    }

    MyMenuItem {
        text: qsTr("描边(&S)...")
        onTriggered: {
            console.log("描边已被点击")
        }
    }

    MenuSeparator{}

    MyMenuItem {
        sequence: "Ctrl+T"
        text: qsTr("自由变换(&F)...")
        onTriggered: {
            console.log("自由变换已被点击")
        }
    }

    MyMenuItem{
        text: qsTr("自动对齐图层...")
        onTriggered: {
            console.log("自动对齐图层已被点击")
        }
    }

    MyMenuItem{
        text: qsTr("自动混合图层...")
        onTriggered: {
            console.log("自动混合图层")
        }
    }

    MenuSeparator{}

    MyMenuItem{
        text: qsTr("定义画笔预设(&B)...")
        onTriggered: {
            console.log("定义画笔预设")
        }
    }

    MyMenuItem{
        text: qsTr("定义图案...")
        onTriggered: {
            console.log("定义图案")
        }
    }

    MyMenuItem{
        text: qsTr("定义自定形状...")
        onTriggered: {
            console.log("定义自定形状")
        }
    }

    MenuSeparator{}

    Menu{
        title: qsTr("清理(&R)")
        MyMenuItem{
            text: qsTr("剪切板(&C)")
            onTriggered: {
                console.log("剪切板")
            }
        }

        MyMenuItem{
            text: qsTr("历史记录(&H)")
            onTriggered: {
                console.log("历史记录")
            }
        }

        MyMenuItem{
            text: qsTr("全部(&A)")
            onTriggered: {
                console.log("全部")
            }
        }

    }

    MenuSeparator{}

    MyMenuItem{
        sequence: "Alt+Shift+Ctrl+K"
        text: qsTr("键盘快捷键...")
        onTriggered: {
            console.log("键盘快捷键")
        }
    }

    MyMenuItem{
        sequence: "Alt+Shift+Ctrl+M"
        text: qsTr("菜单(&U)...")
        onTriggered: {
            console.log("菜单")
        }
    }

}
