import QtQuick
import QtQuick.Controls

Menu
{
    title: qsTr("文字(&Y)")

    Menu
    {
        title: qsTr("面板")

        MyMenuItem
        {
            text: qsTr("文字面板(&A)")
            onTriggered:
            {
                console.log("文字面板")
            }
        }

        MyMenuItem
        {
            text: qsTr("段落面板(&G)")
            onTriggered:
            {
                console.log("段落面板")
            }
        }


        MenuSeparator{}


        MyMenuItem
        {
            text: qsTr("字形面板")
            onTriggered:
            {
                console.log("字形面板")
            }
        }


        MenuSeparator{}


        MyMenuItem
        {
            text: qsTr("字符样式面板")
            onTriggered:
            {
                console.log("字符样式面板")
            }
        }

        MyMenuItem
        {
            text: qsTr("段落样式面板")
            onTriggered:
            {
                console.log("段落样式面板")
            }
        }
    }


    MenuSeparator{}


    Menu
    {
        title: qsTr("消除锯齿")
    }


    MenuSeparator{}


    Menu
    {
        title: qsTr("文本排列方向")
    }

    Menu
    {
        title: qsTr("OpenType")
    }


    MenuSeparator{}


    MyMenuItem
    {
        text: qsTr("转换为形状(&S)")
        onTriggered:
        {
            console.log("转换为形状")
        }
    }


    MenuSeparator{}


    Menu
    {
        width: 75
        title: qsTr("字体预览大小")

        //确保只有一个选中
        ButtonGroup
        {
            id: childGroup
            exclusive: true
        }

        CheckBox
        {
            text: qsTr("无")
            ButtonGroup.group: childGroup
            onCheckedChanged:
            {
                console.log("字体预览大小 无", checked)
            }
        }

        CheckBox
        {
            text: qsTr("小")
            ButtonGroup.group: childGroup
            onCheckedChanged:
            {
                console.log("字体预览大小 小", checked)
            }
        }

        CheckBox
        {
            text: qsTr("中")
            ButtonGroup.group: childGroup
            onCheckedChanged:
            {
                console.log("字体预览大小 中", checked)
            }
        }

        CheckBox
        {
            text: qsTr("大")
            ButtonGroup.group: childGroup
            onCheckedChanged:
            {
                console.log("字体预览大小 大", checked)
            }
        }

        CheckBox
        {
            text: qsTr("特大")
            ButtonGroup.group: childGroup
            onCheckedChanged:
            {
                console.log("字体预览大小 特大", checked)
            }
        }

        CheckBox
        {
            text: qsTr("超大")
            ButtonGroup.group: childGroup
            onCheckedChanged:
            {
                console.log("字体预览大小 超大", checked)
            }
        }
    }
}
