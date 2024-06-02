import QtQuick
import QtQuick.Controls
import QtQuick.Layouts

// Item {
//     ToolBar {
//         id: toolBar
//         x: 8
//         y: 8
//         width: 1080
//         height: 26
        Item {
            id: rectangle_toolBar
            anchors.fill: parent
            RowLayout{
                width: parent.width
                height: parent.height
                spacing: 5

                Rectangle {
                    id: rect
                    Layout.preferredWidth:parent.height*2
                    Layout.preferredHeight: parent.height/1.5
                    border.width: 2
                    border.color: modelData.get(comboBox.currentIndex).bordColor
                    color: modelData.get(comboBox.currentIndex).mainColor

                    Layout.fillWidth: true
                    Layout.minimumWidth: parent.height
                }

                ComboBox {
                    id: comboBox
                    Layout.preferredWidth:parent.height*3

                    textRole: "name"
                    model: ListModel {
                        id: modelData
                        ListElement {
                            name: "1"
                            bordColor: "red"
                            mainColor: "grey"
                        }
                        ListElement {
                            name: "2"
                            bordColor: "grey"
                            mainColor: "black"
                        }
                        ListElement {
                            name: "3"
                            bordColor: "black"
                            mainColor: "green"
                        }
                    }

                    Layout.fillWidth: true
                    Layout.minimumWidth: parent.height
                }

                ToolSeparator {
                    Layout.preferredHeight: parent.height
                }

                ComboBox {
                    id: comboBox1
                    Layout.preferredWidth:parent.height*3
                    model: ["形状", "111", "222"]

                    Layout.fillWidth: true
                    Layout.minimumWidth: parent.height
                }

                ToolSeparator {
                    Layout.preferredHeight: parent.height
                }

                    Label {
                        text: "填充: "
                    }

                    Rectangle {
                        id: rect1
                        Layout.preferredWidth:parent.height*2
                        Layout.preferredHeight: parent.height/1.5
                        color: "black"
                        border.color: "grey"
                        border.width: 2

                        Layout.fillWidth: true
                        Layout.minimumWidth: parent.height
                    }

                    Label {
                        text: "描边: "
                    }

                    Rectangle {
                        Layout.preferredWidth:parent.height*2
                        Layout.preferredHeight: parent.height/1.5
                        border.color: "grey"
                        border.width: 2
                        color: "black"
                        Rectangle {
                            height: parent.height - 6
                            width: parent.width - 6
                            anchors.centerIn: parent

                            Rectangle {
                                height: parent.height - 2
                                width: parent.width - 2
                                anchors.centerIn: parent
                                clip: true

                                Rectangle {
                                    color: "red"
                                    height: parent.height / 4
                                    width: parent.width
                                    anchors.centerIn: parent
                                    rotation: -25
                                    antialiasing: true
                                }

                                Rectangle {
                                    height: parent.height / 5 * 2
                                    width: parent.width / 3 * 2
                                    anchors.centerIn: parent
                                    color: "black"
                                    border.color: "white"
                                }
                            }
                        }
                        Layout.fillWidth: true
                        Layout.minimumWidth: parent.height
                    }

                    ComboBox {
                        id: comboBox2
                        Layout.preferredWidth:parent.height*3
                        model: ["4像素", "111", "222"]

                        Layout.fillWidth: true
                        Layout.minimumWidth: 0
                    }

                    Item {
                        width: 10
                    }

                ToolSeparator {
                    Layout.preferredHeight: parent.height
                }

                    Label {
                        text: "W: "
                    }

                    TextEdit {
                        Layout.preferredWidth:parent.height*3
                        text: "0像素"

                        Layout.fillWidth: true
                        Layout.minimumWidth: 0
                    }

                    Label {
                        text: "H: "
                    }

                    TextEdit {
                        Layout.preferredWidth:parent.height*3
                        text: "0像素"

                        Layout.fillWidth: true
                        Layout.minimumWidth: parent.height
                    }

                ToolSeparator {
                    Layout.preferredHeight: parent.height
                }

                Button {
                    id: imageBtn
                    Layout.preferredWidth:parent.height*3
                    text: "img"

                    Layout.fillWidth: true
                    Layout.minimumWidth: parent.height
                }

                ToolSeparator {
                    Layout.preferredHeight: parent.height
                }

                Button {
                    id: imageBtn2
                    Layout.preferredWidth:parent.height*3
                    text: "img"

                    Layout.fillWidth: true
                    Layout.minimumWidth: parent.height
                }

                ToolSeparator {
                   Layout.preferredHeight: parent.height
                }

                Button {
                    id: imageBtn3
                    Layout.preferredWidth:parent.height*3
                    text: "img"

                    Layout.fillWidth: true
                    Layout.minimumWidth: parent.height
                }

                ToolSeparator {
                   Layout.preferredHeight: parent.height
                }

                Button {
                    id: imageBtn4
                    Layout.preferredWidth:parent.height*3
                    text: "img"

                    Layout.fillWidth: true
                    Layout.minimumWidth: parent.height
                }

                CheckBox {
                    text: "对齐边缘"
                    Layout.preferredWidth:parent.height*5

                    Layout.fillWidth: true
                    Layout.minimumWidth: parent.height
                }
                Item {
                    Layout.fillWidth: true
                    Layout.preferredWidth: 700
                }
            }
        }
//     }
// }
