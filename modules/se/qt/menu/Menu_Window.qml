import QtQuick
import QtQuick.Controls

Menu {
    title: qsTr("窗口(&W)")
    //排列
    Menu{
        title: "&排列(&A)"

        MyMenuItem{
            text: qsTr("全部垂直拼贴")
            onTriggered: Qt.quit();
        }
        MyMenuItem{
            text: qsTr("全部水平拼贴")
            onTriggered: Qt.quit();
        }
        MyMenuItem{
            text: qsTr("双联水平")
            onTriggered: Qt.quit();
        }
        MyMenuItem{
            text: qsTr("双联垂直")
            onTriggered: Qt.quit();
        }
        MyMenuItem{
            text: qsTr("三联水平")
            onTriggered: Qt.quit();
        }
        MyMenuItem{
            text: qsTr("三联垂直")
            onTriggered: Qt.quit();
        }
        MyMenuItem{
            text: qsTr("三联堆积")
            onTriggered: Qt.quit();
        }
        MyMenuItem{
            text: qsTr("四联")
            onTriggered: Qt.quit();
        }
        MyMenuItem{
            text: qsTr("六联")
            onTriggered: Qt.quit();
        }
        MyMenuItem{
            text: qsTr("将所有内容合并到选项卡中")
            onTriggered: Qt.quit();
        }
        MenuSeparator{}
        MyMenuItem{
            text: qsTr("层叠(&D)")
            onTriggered: Qt.quit();
        }
        MyMenuItem{
            text: qsTr("平铺")
            onTriggered: Qt.quit();
        }
        MyMenuItem{
            text: qsTr("在窗口中浮动")
            onTriggered: Qt.quit();
        }
        MyMenuItem{
            text: qsTr("使所有内容在窗口中浮动")
            onTriggered: Qt.quit();
        }
        MenuSeparator{}
        MyMenuItem{
            text: qsTr("匹配缩放(&Z)")
            onTriggered: Qt.quit();
        }
        MyMenuItem{
            text: qsTr("匹配位置(&L)")
            onTriggered: Qt.quit();
        }
        MyMenuItem{
            text: qsTr("匹配旋转(&R)")
            onTriggered: Qt.quit();
        }
        MyMenuItem{
            text: qsTr("全部匹配(&M)")
            onTriggered: Qt.quit();
        }

    }

    //工作区
    Menu{
        title: "工作区(&K)"

        MyMenuItem{
            text: qsTr("基本功能（默认）(&E)")
            onTriggered: console.log("Delete action triggered");
        }
        MyMenuItem{
            text: qsTr("图形和Web")
            onTriggered: console.log("Delete action triggered");
        }
        MyMenuItem{
            text: qsTr("动感")
            onTriggered: console.log("Delete action triggered");
        }
        MyMenuItem{
            text: qsTr("绘画")
            onTriggered: console.log("Delete action triggered");
        }
        MyMenuItem{
            text: qsTr("摄影")
            onTriggered: console.log("Delete action triggered");
        }
        MenuSeparator{}
        MyMenuItem{
            text: qsTr("复位基本功能(&R)")
            onTriggered: console.log("Delete action triggered");
        }
        MyMenuItem{
            text: qsTr("复新建工作区(&N)")
            onTriggered: console.log("Delete action triggered");
        }
        MyMenuItem{
            text: qsTr("删除工作区(&D)")
            onTriggered: console.log("Delete action triggered");
        }
        MenuSeparator{}
        MyMenuItem{
            text: qsTr("键盘快捷键和菜单(&K)")
            onTriggered: console.log("Delete action triggered");
        }
        MyMenuItem{
            text: qsTr("锁定工作区(&L)")
            onTriggered: console.log("Delete action triggered");
        }
    }
    MenuSeparator{}
    //扩展功能
    Menu{
        title: "扩展功能"


    }
    MenuSeparator{}
    //测量记录
    MyMenuItem {
        text: "测量记录"
        onTriggered:Qt.quit();
    }
    //导航器
    MyMenuItem {
        text: "导航器"
        onTriggered:Qt.quit();
    }
    //调整
    MyMenuItem {
        text: "调整"
        onTriggered:Qt.quit();
    }
    //动作
    MyMenuItem {
        text: "动作"
        onTriggered:Qt.quit();
        sequence: "Alt+F9"
    }
    //段落
    MyMenuItem {
        text: "段落"
        onTriggered:Qt.quit();
    }
    //段落样式
    MyMenuItem {
        text: "段落样式"
        onTriggered:Qt.quit();
    }
    //仿制源
    MyMenuItem {
        text: "仿制源"
        onTriggered:Qt.quit();
    }
    //工具预设
    MyMenuItem {
        text: "工具预设"
        onTriggered:Qt.quit();
    }
    //画笔
    MyMenuItem {
        text: "画笔"
        onTriggered:Qt.quit();
        sequence: "F5"
    }
    //画笔预设
    MyMenuItem {
        text: "画笔预设"
        onTriggered:Qt.quit();
    }
    //历史记录
    MyMenuItem {
        text: "历史记录"
        onTriggered:Qt.quit();
    }
    //路径
    MyMenuItem {
        text: "路径"
        onTriggered:Qt.quit();
    }
    //色板
    MyMenuItem {
        text: "色板"
        onTriggered:Qt.quit();
    }
    //时间轴
    MyMenuItem {
        text: "时间轴"
        onTriggered:Qt.quit();
    }
    //属性
    MyMenuItem {
        text: "属性"
        onTriggered:Qt.quit();
    }
    //通道
    MyMenuItem {
        text: "通道"
        onTriggered:Qt.quit();
    }
    //图层
    MyMenuItem {
        text: "图层"
        onTriggered:Qt.quit();
        sequence: "F7"
    }
    //图层复合
    MyMenuItem {
        text: "图层复合"
        onTriggered:Qt.quit();
    }
    //信息
    MyMenuItem {
        text: "信息"
        onTriggered:Qt.quit();
        sequence: "F8"
    }
    //颜色
    MyMenuItem {
        text: "颜色"
        onTriggered:Qt.quit();
        sequence: "F6"
    }
    //样式
    MyMenuItem {
        text: "样式"
        onTriggered:Qt.quit();
    }
    //直方图
    MyMenuItem {
        text: "直方图"
        onTriggered:Qt.quit();
    }
    //注释
    MyMenuItem {
        text: "注释"
        onTriggered:Qt.quit();
    }
    //字符
    MyMenuItem {
        text: "字符"
        onTriggered:Qt.quit();
    }
    //字符样式
    MyMenuItem {
        text: "字符样式"
        onTriggered:Qt.quit();
    }
    MenuSeparator{}
    //选项
    MyMenuItem {
        text: "选项"
        onTriggered:Qt.quit();
    }
    //工具
    MyMenuItem {
        text: "工具"
        onTriggered:Qt.quit();
    }
}
