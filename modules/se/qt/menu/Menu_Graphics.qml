import QtQuick
import QtQuick.Controls

Menu{
    width: 300
    id:graphics
    title: qsTr("图像(&I)")

    Menu{
        width:150
        title: qsTr("模式(&M)")

        CheckBox{
            text:qsTr("位图(&B)")
            onCheckedChanged: {
                console.log("位图已被点击", checked)
            }
        }
        CheckBox{
            text:qsTr("灰度(&G)")
            onCheckedChanged: {
                console.log("灰度已被点击", checked)
            }
        }
        CheckBox{
            text:qsTr("双色调(&D)")
            onCheckedChanged: {
                console.log("双色调已被点击", checked)
            }
        }
        CheckBox{
            text:qsTr("索引颜色(&I)...")
            onCheckedChanged: {
                console.log("索引颜色已被点击", checked)
            }
        }
        CheckBox{
            text:qsTr("RGB颜色(&R)")
            onCheckedChanged: {
                console.log("RGB颜色已被点击", checked)
            }
        }
        CheckBox{
            text:qsTr("CMYK颜色(&C)")
            onCheckedChanged: {
                console.log("CMYK颜色已被点击", checked)
            }
        }
        CheckBox{
            text:qsTr("Lab颜色(&L)")
            onCheckedChanged: {
                console.log("Lab颜色已被点击", checked)
            }
        }
        CheckBox{
            text:qsTr("多通道(&M)")
            onCheckedChanged: {
                console.log("多通道已被点击", checked)
            }
        }


        MenuSeparator{}

        ButtonGroup
        {
            id: btngroup
            exclusive: true
        }
        CheckBox{
            text:qsTr("8位/通道(&A)")
            ButtonGroup.group: btngroup
            onCheckedChanged: {
                console.log("8位/通道已被点击", checked)
            }
        }
        CheckBox{
            text:qsTr("16位/通道(&N)")
            ButtonGroup.group: btngroup
            onCheckedChanged: {
                console.log("16位/通道已被点击", checked)
            }
        }
        CheckBox{
            text:qsTr("32位/通道(&H)")
            ButtonGroup.group: btngroup
            onCheckedChanged: {
                console.log("32位/通道已被点击", checked)
            }
        }
        MenuSeparator{}
        MyMenuItem{
            text:qsTr("颜色表(&T)...")
            onTriggered: {
                console.log("颜色表已被点击")
            }
        }
    }

    Menu{
        title: qsTr("调整(&J)")
        MyMenuItem{
            text:qsTr("亮度/对比度(&C)...")
            onTriggered: {
                console.log("亮度/对比度已被点击")
            }
        }
        MyMenuItem{
            sequence: "Ctrl+L"
            text:qsTr("色阶(&L)...")
            onTriggered: {
                console.log("色阶已被点击")
            }
        }
        MyMenuItem{
            sequence: "Ctrl+M"
            text:qsTr("曲线(&U)...")
            onTriggered: {
                console.log("曲线已被点击")
            }
        }
        MyMenuItem{
            text:qsTr("曝光度(&E)...")
            onTriggered: {
                console.log("曝光度已被点击")
            }
        }
        MenuSeparator{}

        MyMenuItem{
            text:qsTr("自然饱和度(&V)...")
            onTriggered: {
                console.log("自然饱和度已被点击")
            }
        }
        MyMenuItem{
            sequence: "Ctrl+U"
            text:qsTr("色相/饱和度(&H)...")
            onTriggered: {
                console.log("色相/饱和度已被点击")
            }
        }
        MyMenuItem{
            sequence: "Ctrl+B"
            text:qsTr("色彩平衡(&B)...")
            onTriggered: {
                console.log("色彩平衡已被点击")
            }
        }
        MyMenuItem{
            sequence: "Alt+Shift+Ctrl+B"
            text:qsTr("黑白(&M)...")
            onTriggered: {
                console.log("黑白已被点击")
            }
        }
        MenuSeparator{}
        MyMenuItem{
            text:qsTr("照片滤镜(&F)...")
            onTriggered: {
                console.log("照片滤镜已被点击")
            }
        }
        MyMenuItem{
            text:qsTr("颜色查找...")
            onTriggered: {
                console.log("颜色查找已被点击")
            }
        }
        MenuSeparator{}
        MyMenuItem{
            sequence: "Ctrl+I"
            text:qsTr("反相(&I)")
            onTriggered: {
                console.log("反相已被点击")
            }
        }
        MenuSeparator{}
        MyMenuItem{
            text:qsTr("色调分离(&P)...")
            onTriggered: {
                console.log("色调分离已被点击")
            }
        }
        MyMenuItem{
            text:qsTr("阈值(&T)...")
            onTriggered: {
                console.log("阈值已被点击")
            }
        }
        MyMenuItem{
            text:qsTr("渐变映射(&G)...")
            onTriggered: {
                console.log("渐变映射已被点击")
            }
        }
        MyMenuItem{
            text:qsTr("可选颜色(&S)...")
            onTriggered: {
                console.log("可选颜色已被点击")
            }
        }
        MenuSeparator{}
        MyMenuItem{
            text:qsTr("阴影/高光(&W)...")
            onTriggered: {
                console.log("阴影/高光已被点击")
            }
        }
        MyMenuItem{
            text:qsTr("HDR色调...")
            onTriggered: {
                console.log("HDR色调已被点击")
            }
        }
        MenuSeparator{}
        MyMenuItem{
            sequence: "Shift+Ctrl+U"
            text:qsTr("去色(&D)...")
            onTriggered: {
                console.log("去色已被点击")
            }
        }
        MyMenuItem{
            text:qsTr("匹配颜色(&M)...")
            onTriggered: {
                console.log("匹配颜色已被点击")
            }
        }
        MyMenuItem{
            text:qsTr("替换颜色(&R)...")
            onTriggered: {
                console.log("替换颜色已被点击")
            }
        }
        MyMenuItem{
            text:qsTr("色调均化(&Q)")
            onTriggered: {
                console.log("色调均化已被点击")
            }
        }
    }
    MenuSeparator{}
    MyMenuItem{
        sequence: "Shift+Ctrl+L"
        text:qsTr("自动色调(&N)")
        onTriggered: {
            console.log("自动色调已被点击")
        }
    }
    MyMenuItem{
        sequence: "Alt+Shift+Ctrl+L"
        text:qsTr("自动对比度(&U)...")
        onTriggered: {
            console.log("自动对比度已被点击")
        }
    }
    MyMenuItem{
        sequence: "Shift+Ctrl+B"
        text:qsTr("自动颜色(&O)")
        onTriggered: {
            console.log("自动颜色已被点击")
        }
    }

    MenuSeparator{}

    MyMenuItem{
        sequence: "Alt+Ctrl+I"
        text:qsTr("图像大小(&I)...")
        onTriggered: {
            console.log("图像大小已被点击")
        }
    }

    MyMenuItem{
        sequence: "Alt+Ctrl+C"
        text:qsTr("画布大小(&S)...")
        onTriggered: {
            console.log("画布大小已被点击")
        }
    }

    Menu{
        title:"图像旋转(&G)"
        MyMenuItem{
            text:qsTr("180度(&1)")
            onTriggered: {
                console.log("180度已被点击")
            }
        }
        MyMenuItem{
            text:qsTr("顺时针90度(&9)")
            onTriggered: {
                console.log("顺时针90度已被点击")
            }
        }
        MyMenuItem{
            text:qsTr("逆时针90度(&0)")
            onTriggered: {
                console.log("逆时针90度已被点击")
            }
        }
        MyMenuItem{
            text:qsTr("任意角度(&A)...")
            onTriggered: {
                console.log("任意角度已被点击")
            }
        }
        MenuSeparator{}
        MyMenuItem{
            text:qsTr("水平翻转画布(&H)...")
            onTriggered: {
                console.log("水平翻转画布已被点击")
            }
        }
        MyMenuItem{
            text:qsTr("垂直翻转画布(&V)...")
            onTriggered: {
                console.log("垂直翻转画布已被点击")
            }
        }
    }
    MyMenuItem{
        text:qsTr("裁剪(&P)")
        onTriggered: {
            console.log("裁剪已被点击")
        }
    }
    MyMenuItem{
        text:qsTr("裁切(&R)...")
        onTriggered: {
            console.log("裁切已被点击")
        }
    }
    MenuSeparator{}
    MyMenuItem{
        text:qsTr("复制(&D)...")
        onTriggered: {
            console.log("复制已被点击")
        }
    }
    MyMenuItem{
        text:qsTr("应用图像(&Y)...")
        onTriggered: {
            console.log("应用图像已被点击")
        }
    }
    MyMenuItem{
        text:qsTr("计算(&C)...")
        onTriggered: {
            console.log("计算已被点击")
        }
    }
}
