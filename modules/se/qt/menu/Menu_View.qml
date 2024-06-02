import QtQuick
import QtQuick.Controls

Menu {
    width:300
    title: qsTr("视图(&V)")
    //校样设置
    Menu{
        title: "校样设置(&U)"

        MyMenuItem{
            text: qsTr("自定(&U)...")
            onTriggered: Qt.quit();
        }
        MenuSeparator{}
        MyMenuItem{
            text: qsTr("工作中的CMYK(&C)")
            onTriggered: Qt.quit();
        }
        MyMenuItem{
            text: qsTr("工作中的青版(&Y)")
            onTriggered: Qt.quit();
        }
        MyMenuItem{
            text: qsTr("工作中的洋红版(&M)")
            onTriggered: Qt.quit();
        }
        MyMenuItem{
            text: qsTr("工作中的黄版(&W)")
            onTriggered: Qt.quit();
        }
        MyMenuItem{
            text: qsTr("工作中的黑版(&B)")
            onTriggered: Qt.quit();
        }
        MyMenuItem{
            text: qsTr("工作中的CMY版(&P)")
            onTriggered: Qt.quit();
        }
        MenuSeparator{}
        MyMenuItem{
            text: qsTr("旧版Macintosh RGB(Gamma 1.8)(&A)")
            onTriggered: Qt.quit();
        }
        MyMenuItem{
            text: qsTr("Internet 标准 RGB(sRGB)(&S)")
            onTriggered: Qt.quit();
        }
        MyMenuItem{
            text: qsTr("显示器 RGB (&O)")
            onTriggered: Qt.quit();
        }
        MenuSeparator{}
        MyMenuItem{
            text: qsTr("色盲—红色盲型")
            onTriggered: Qt.quit();
        }
        MyMenuItem{
            text: qsTr("色盲—绿色盲型")
            onTriggered: Qt.quit();
        }
    }
    //校样颜色
    MyMenuItem{
        text: "校样颜色（&L)"
        onTriggered: Qt.quit();
        sequence:"Ctrl+Y"
    }
    //色域警告
    MyMenuItem{
        text: "色域警告（&W)"
        onTriggered: Qt.quit();
        sequence:"Shift+Ctrl+Y"
    }
    //像素长宽比
    Menu{
        title: "像素长度比(&S)"

        MyMenuItem{
            text: qsTr("自定义像素长宽比(&C)...")
            onTriggered: Qt.quit();
        }
        MyMenuItem{
            text: qsTr("删除像素长宽比(&D)...")
            onTriggered: Qt.quit();
        }
        MyMenuItem{
            text: qsTr("复位像素长宽比(&R)")
            onTriggered: Qt.quit();
        }
        MenuSeparator{}
        MyMenuItem{
            text: qsTr("方形")
            onTriggered: Qt.quit();
        }
        MyMenuItem{
            text: qsTr("D1/DV NTSC(0.91)")
            onTriggered: Qt.quit();
        }
        MyMenuItem{
            text: qsTr("D1/DV PAL(1.09)")
            onTriggered: Qt.quit();
        }
        MyMenuItem{
            text: qsTr("D1/DV NTSC 宽银幕(1.21)")
            onTriggered: Qt.quit();
        }
        MyMenuItem{
            text: qsTr("HDV 1080/DVCPRO HD 720(1.33)")
            onTriggered: Qt.quit();
        }
        MyMenuItem{
            text: qsTr("D1/DV PAL宽银幕(1.46))")
            onTriggered: Qt.quit();
        }
        MyMenuItem{
            text: qsTr("D1/DV NTSC(0.91)")
            onTriggered: Qt.quit();
        }
        MyMenuItem{
            text: qsTr("变形 2:1(2)")
            onTriggered: Qt.quit();
        }
        MyMenuItem{
            text: qsTr("DVCPRO HD 1080(1.5)")
            onTriggered: Qt.quit();
        }
    }
    //像素长宽比校正
    MyMenuItem{
        text: "像素长宽比校正（&P)"
        onTriggered: Qt.quit();
    }
    //32位预览选项
    MyMenuItem{
        text: "像32位预览选项..."
        onTriggered: Qt.quit();
    }
    MenuSeparator{}
    //放大
    MyMenuItem{
        text: "放大（&I)"
        onTriggered: Qt.quit();
        sequence:"Ctrl++"
    }
    //缩小
    MyMenuItem{
        text: "缩小（&O)"
        onTriggered: Qt.quit();
        sequence:"Ctrl+-"
    }
    //按屏幕大小缩放
    MyMenuItem{
        text: "按屏幕大小缩放（&F)"
        onTriggered: Qt.quit();
        sequence:"Ctrl+0"
    }
    //实际象素
    MyMenuItem{
        text: "实际像素（&A)"
        onTriggered: Qt.quit();
        sequence:"Ctrl+1"
    }
    //打印尺寸
    MyMenuItem{
        text: "打印尺寸(&Z)"
        onTriggered: Qt.quit();
    }
    MenuSeparator{}
    //屏幕模式
    Menu{
        title: "屏幕模式(&M)"

        MyMenuItem{
            text: qsTr("cn")
            onTriggered: console.log("New action triggered");
        }
        MyMenuItem{
            text: qsTr("sn")
            onTriggered: console.log("New action triggered");
        }
    }
    MenuSeparator{}
    //显示额外内容
    MyMenuItem{
        text: "显示额外内容（&X)"
        onTriggered: Qt.quit();
        sequence:"Ctrl+1"
    }
    //显示
    Menu{
        title: "显示(&H)"

        MyMenuItem{
            text: qsTr("图层边缘(&E)")
            onTriggered: Qt.quit();
        }
        MyMenuItem{
            text: qsTr("选区边缘(&S)")
            onTriggered: Qt.quit();
        }
        MyMenuItem{
            text: qsTr("目标路径(&P))")
            onTriggered: Qt.quit();
            sequence: "Shift+Ctrl+H"
        }
        MyMenuItem{
            text: qsTr("网格(&G))")
            onTriggered: Qt.quit();
            sequence: "Ctrl+'"
        }
        MyMenuItem{
            text: qsTr("参考线(&U))")
            onTriggered: Qt.quit();
            sequence: "Ctrl+;"
        }
        MyMenuItem{
            text: qsTr("画布参考线")
            onTriggered: Qt.quit();

        }
        MyMenuItem{
            text: qsTr("画板参考线")
            onTriggered: Qt.quit();

        }
        MyMenuItem{
            text: qsTr("画板名称")
            onTriggered: Qt.quit();

        }
        MyMenuItem{
            text: qsTr("数量(&C)")
            onTriggered: Qt.quit();

        }
        MyMenuItem{
            text: qsTr("智能参考线(&M)")
            onTriggered: Qt.quit();

        }
        MyMenuItem{
            text: qsTr("切片(&L)")
            onTriggered: Qt.quit();

        }
        MyMenuItem{
            text: qsTr("注释(&O)")
            onTriggered: Qt.quit();

        }
        MyMenuItem{
            text: qsTr("像素网格")
            onTriggered: Qt.quit();

        }
        MenuSeparator{}
        MyMenuItem{
            text: qsTr("画板预览(&V)")
            onTriggered: Qt.quit();
        }
        MyMenuItem{
            text: qsTr("网格(&H)")
            onTriggered: Qt.quit();
        }
        MyMenuItem{
            text: qsTr("编辑图钉")
            onTriggered: Qt.quit();
        }
        MenuSeparator{}
        MyMenuItem{
            text: qsTr("全部(&A)")
            onTriggered: Qt.quit();
        }
        MyMenuItem{
            text: qsTr("无(&N)")
            onTriggered: Qt.quit();
        }
        MenuSeparator{}
        MyMenuItem{
            text: qsTr("显示额外选项(&I)")
            onTriggered: Qt.quit();
        }
    }
    MenuSeparator{}
    //标尺
    MyMenuItem{
        text: "标尺（&R)"
        onTriggered: Qt.quit();
        sequence:"Ctrl+R"
    }
    MenuSeparator{}
    //对齐
    MyMenuItem{
        text: "对齐（&N)"
        onTriggered: Qt.quit();
        sequence:"Shift+Ctrl+；"
    }
    //对齐到
    Menu{
        title: "对齐到（&T)"
        MyMenuItem{
            text: qsTr("参考线(&G)")
            onTriggered: Qt.quit();
        }
        MyMenuItem{
            text: qsTr("网格(&R)")
            onTriggered: Qt.quit();
        }
        MyMenuItem{
            text: qsTr("图层(&L)")
            onTriggered: Qt.quit();
        }
        MyMenuItem{
            text: qsTr("切片(&S)")
            onTriggered: Qt.quit();
        }
        MyMenuItem{
            text: qsTr("文档边界(&D)")
            onTriggered: Qt.quit();
        }
        MenuSeparator{}
        MyMenuItem{
            text: qsTr("全部(&A)")
            onTriggered: Qt.quit();
        }
        MyMenuItem{
            text: qsTr("无(&N)")
            onTriggered: Qt.quit();
        }

    }
    MenuSeparator{}
    //锁定参考线
    MyMenuItem{
        text: "锁定参考线（&G)"
        onTriggered: Qt.quit();
        sequence:"Alt+Ctrl+；"
    }
    //清除参考线
    MyMenuItem{
        text: "清楚参考线（&D)"
        onTriggered: Qt.quit();
    }
    //新建参考线
    MyMenuItem{
        text: "新建参考线（&E)..."
        onTriggered: Qt.quit();
    }
    MenuSeparator{}
    //锁定切片
    MyMenuItem{
        text: "锁定切片（&K)"
        onTriggered: Qt.quit();
    }
    //清楚切片
    MyMenuItem{
        text: "清楚切片(&C))"
        onTriggered: Qt.quit();
    }




}
