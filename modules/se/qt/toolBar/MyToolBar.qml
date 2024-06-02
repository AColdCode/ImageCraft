import QtQuick
import QtQuick.Controls
import Qt5Compat.GraphicalEffects

Item
{
    id: toolBar
    width: parent.width
    height: topToolBar.height
    ToolBar
    {
        id: topToolBar
        width: parent.width
        height: 30
        anchors.left: parent.left

        Word_toolBar
        {
            visible: listView.currentIndex === 0 ? true : false
        }

        PathSelect_toolBar
        {
            visible: listView.currentIndex === 1 ? true : false
        }

        Rectangle_toolBar
        {
            visible: listView.currentIndex === 2 ? true : false
        }

        Grip_toolBar
        {
            visible: listView.currentIndex === 3 ? true : false
        }

        Zoom_toolBar
        {
            visible: listView.currentIndex === 4 ? true : false
        }

        Move_toolBar
        {
            visible: listView.currentIndex === 5 ? true : false
        }

        Boxselect_toolBar
        {
            visible: listView.currentIndex === 6 ? true : false
        }

        Lasso_toolBar
        {
            visible: listView.currentIndex === 7 ? true : false
        }

        Choice_toolBar
        {
            visible: listView.currentIndex === 8 ? true : false
        }

        Cutout_toolBar
        {
            visible: listView.currentIndex === 9 ? true : false
        }

        Frame_toolBar
        {
            visible: listView.currentIndex ===10? true:false
        }

        Straw_toolBar
        {
            visible: listView.currentIndex === 11 ? true : false
        }

        Brush_toolBar
        {
            visible: listView.currentIndex === 12 ? true : false
        }

        CloneStamp_toolBar
        {
            visible: listView.currentIndex === 13 ? true : false
        }

        Eraser_toolBar
        {
            visible: listView.currentIndex === 14 ? true : false
        }

    }

    Rectangle
    {
        id: leftToolBar
        z: showToolBar.z + 1
        property bool rightAble: (x > (toolBar.width - width * 2 / 3) && !rightShow.running)
        property bool leftAble: (x < -(width / 3) && !leftShow.running)
        property bool isPressed: false
        color: "grey"
        width: listView.width
        height: 775
        y: topToolBar.height + menuBar.height - 20
        radius: 10
        clip: true
        ListView
        {
            id: listView
            x: 8
            y: 53
            width: 160
            height: 825
            anchors.top: parent.top
            property string thisName: "文字"
            model: ListModel
            {
                ListElement
                {
                    btnIcon: "qrc:/icon/modules/se/qt/toolBar/Icon/word.svg"
                    name: "文字"
                }

                ListElement
                {
                    btnIcon: "qrc:/icon/modules/se/qt/toolBar/Icon/pathChoice.svg"
                    name: "路径选择"
                }

                ListElement
                {
                    btnIcon: "qrc:/icon/modules/se/qt/toolBar/Icon/Matrix.svg"
                    name: "矩阵"
                }

                ListElement
                {
                    btnIcon: "qrc:/icon/modules/se/qt/toolBar/Icon/Grip.svg"
                    name: "抓手"
                }

                ListElement
                {
                    btnIcon: "qrc:/icon/modules/se/qt/toolBar/Icon/zoom.svg"
                    name: "缩放"
                }

                ListElement
                {
                    btnIcon: "qrc:/icon/modules/se/qt/toolBar/Icon/move.svg"
                    name: "移动"
                }

                ListElement
                {
                    btnIcon: "qrc:/icon/modules/se/qt/toolBar/Icon/box.svg"
                    name: "框选"
                }

                ListElement
                {
                    btnIcon: "qrc:/icon/modules/se/qt/toolBar/Icon/lasso.svg"
                    name: "套索工具"
                }

                ListElement
                {
                    btnIcon: "qrc:/icon/modules/se/qt/toolBar/Icon/choose.svg"
                    name: "选择"
                }

                ListElement
                {
                    btnIcon: "qrc:/icon/modules/se/qt/toolBar/Icon/tailor.svg"
                    name: "裁剪"
                }

                ListElement
                {
                    btnIcon: "qrc:/icon/modules/se/qt/toolBar/Icon/frame.svg"
                    name: "图框"
                }

                ListElement
                {
                    btnIcon: "qrc:/icon/modules/se/qt/toolBar/Icon/straw.svg"
                    name: "吸管"
                }

                ListElement
                {
                    btnIcon: "qrc:/icon/modules/se/qt/toolBar/Icon/brush.svg"
                    name: "画笔"
                }

                ListElement
                {
                    btnIcon: "qrc:/icon/modules/se/qt/toolBar/Icon/imitation.svg"
                    name: "仿制图章"
                }

                ListElement
                {
                    btnIcon: "qrc:/icon/modules/se/qt/toolBar/Icon/eraser.svg"
                    name: "橡皮擦"
                }
            }
            delegate: listViewDelegate

            header: Rectangle{
                color: Qt.rgba(51/255, 51/255, 51/255, 0)
                width: parent.width
                height:20
                radius: width

                TapHandler
                {
                    onPressedChanged:
                    {
                        leftToolBar.isPressed = pressed || leftToolBarDrag.active
                    }
                }

                HoverHandler
                {
                    cursorShape: Qt.OpenHandCursor
                }

                DragHandler
                {
                    id: leftToolBarDrag
                    target: leftToolBar
                    xAxis
                    {
                        minimum: -leftToolBar.width
                        maximum: toolBar.width
                    }
                    yAxis.minimum: 0
                    onActiveChanged:
                    {
                        leftToolBar.isPressed = active
                        if(!active)
                        {
                            if(leftToolBar.rightAble)
                            {
                                rightHide.start()
                            }else if(leftToolBar.leftAble)
                            {
                                leftHide.start()
                            }
                        }
                    }
                    cursorShape: Qt.DragMoveCursor
                }

                // MouseArea
                // {
                //     anchors.fill: parent
                //     drag.target: leftToolBar
                //     drag.axis: Drag.XAxis | Drag.YAxis
                //     drag.minimumX: -leftToolBar.width
                //     drag.maximumX: toolBar.width
                //     drag.minimumY: 0
                //     onReleased:
                //     {
                //         if(leftToolBar.rightAble)
                //         {
                //             rightHide.start()
                //         }else if(leftToolBar.leftAble)
                //         {
                //             leftHide.start()
                //         }
                //         leftToolBar.isPressed = false
                //     }
                //     onPressed:
                //     {
                //         leftToolBar.isPressed = true
                //     }
                // }
            }
        }

        Component
        {
            id: listViewDelegate
            Rectangle
            {
                property bool isHoverd: listViewHover.hovered
                property bool isThisBtn: listView.thisName === name  //当前按钮是否被选中
                width: 145
                height: 50
                radius: 50
                color: isHoverd ? Qt.rgba(135/255, 206/255, 250/255, 1) : "#00000000"
                Rectangle
                {
                    width: parent.isThisBtn ? parent.width : 0
                    height: parent.height
                    radius: parent.radius
                    color: Qt.rgba(0, 191/255, 1, 1)
                    Behavior on width {
                        NumberAnimation
                        {
                            duration: 200
                            easing.type: Easing.InOutQuad
                        }
                    }
                }

                Row
                {
                    spacing: 10
                    anchors.verticalCenter: parent.verticalCenter
                    anchors.left: parent.left
                    anchors.leftMargin: parent.radius / 4
                    Image
                    {
                        width: 20
                        height: width
                        source: btnIcon
                        sourceSize: Qt.size(32, 32)
                    }
                    Text
                    {
                        font.bold: isThisBtn ? true : false
                        scale: isThisBtn ? 1.1 : 1
                        text: name
                        color: "white"
                        Behavior on scale {
                            NumberAnimation
                            {
                                duration: 200
                                easing.type: Easing.InOutQuad
                            }
                        }
                    }
                }

                TapHandler
                {
                    onTapped:
                    {
                        listView.currentIndex = index
                        listView.thisName = name
                    }
                }

                HoverHandler
                {
                    id: listViewHover
                    cursorShape: Qt.PointingHandCursor
                }
            }
        }

        //吸附进右边
        NumberAnimation
        {
            id: rightHide
            target: leftToolBar
            property: "x"
            to: toolBar.width
            duration: 200
            easing.type: Easing.InOutQuad
        }
        //吸附进左边
        NumberAnimation
        {
            id: leftHide
            target: leftToolBar
            property: "x"
            to: -leftToolBar.width
            duration: 200
            easing.type: Easing.InOutQuad
        }
    }

    Glow
    {
        id: hideGlow
        anchors.fill: leftToolBar
        radius: 10
        samples: 17
        color: "red"
        source: leftToolBar
        spread: 0
        visible: leftToolBar.rightAble | leftToolBar.leftAble
    }

    Glow
    {
        id: pressGlow
        anchors.fill: leftToolBar
        radius: 10
        samples: 17
        color: "skyblue"
        source: leftToolBar
        spread: 0.2
        visible: leftToolBar.isPressed && !hideGlow.visible
    }

    NumberAnimation    //将leftToolBar从右边拉出来
    {
        id: rightShow
        target: leftToolBar
        property: "x"
        to: toolBar.width - leftToolBar.width
        duration: 200
        easing.type: Easing.InOutQuad
    }
    Rectangle
    {
        id: rightTag
        property bool isHoverd: false
        width: leftToolBar.x === toolBar.width ? 80 : 0
        height: 40
        radius: 40
        x: toolBar.width - width / 2
        y: leftToolBar.y
        color: isHoverd ? "skyblue" : "transparent"
        scale: isHoverd ? 1.1 : 1
        Image
        {
            anchors.left: parent.left
            source: "qrc:/modules/se/qt/toolBar/Image/Open.png"
            rotation: -90
            sourceSize: Qt.size(40,40)
        }

        Behavior on width
        {
            NumberAnimation
            {
                duration: 200
                easing.type: Easing.InOutQuad
            }
        }

        MouseArea
        {
            anchors.fill: parent
            hoverEnabled: true
            onClicked:
            {
                rightShow.running = true
            }

            onEntered:
            {
                parent.isHoverd = true
            }
            onExited:
            {
                parent.isHoverd = false
            }
        }
    }

    NumberAnimation    //将leftToolBar从左边拉出来
    {
        id: leftShow
        target: leftToolBar
        property: "x"
        to: 0
        duration: 200
        easing.type: Easing.InOutQuad
    }
    Rectangle
    {
        id: showToolBar
        property bool isHoverd: showToolBarHover.hovered
        width: leftToolBar.x === -leftToolBar.width ? 80 : 0
        height: 40
        radius: 40
        x: -(width / 2)
        y: leftToolBar.y
        color: isHoverd ? "skyblue" : "transparent"
        scale: isHoverd ? 1.1 : 1

        Image
        {
            anchors.right: parent.right
            source: "qrc:/modules/se/qt/toolBar/Image/Open.png"
            rotation: 90
            sourceSize: Qt.size(40,40)
        }

        Behavior on width
        {
            NumberAnimation
            {
                duration: 200
                easing.type: Easing.InOutQuad
            }
        }

        TapHandler
        {
            onTapped:
            {
                leftShow.running = true
            }
        }

        HoverHandler
        {
            id: showToolBarHover
            cursorShape: Qt.PointingHandCursor
        }
    }
}

