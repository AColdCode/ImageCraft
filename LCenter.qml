import QtQuick
import QtQuick.Controls
import QtQuick.Layouts
import ImageCraft 1.0

StackLayout
{
    id: stackL
    required property ListModel sharePage
    required height
    required width
    clip: true
    Repeater
    {
        model: sharePage

        Item
        {
            id: tabContent
            Layout.fillWidth: true
            Layout.fillHeight: true
            Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
            property bool isModified: layer.isModified_
            property ListModel layerModel: layer.layerListModel
            property Repeater layers: layer.layers
            property Rectangle thelayer: layer
            property string filePath: layers.count ? layers.itemAt(0).editor.path : ""
            property size imageSize: layers.count ? layers.itemAt(0).sourceSize : size(0, 0)

            Rectangle
            {
                id: display_rect
                height: layer.height
                width: layer.height
                clip: true
                color: "black"
                anchors.centerIn: parent

                Rectangle
                {
                    id: layer
                    height: !layers.count ? 100 : ((layers.itemAt(0).sourceSize.height) / (layers.itemAt(0).sourceSize.width) >= (tabContent.height / tabContent.width)) ? layers.itemAt(0).height : (layers.itemAt(0).sourceSize.height * layers.itemAt(0).width / layers.itemAt(0).sourceSize.width)
                    width: !layers.count ? 100 : ((layers.itemAt(0).sourceSize.height) / (layers.itemAt(0).sourceSize.width) <= (tabContent.height / tabContent.width)) ? layers.itemAt(0).width : (layers.itemAt(0).sourceSize.width * layers.itemAt(0).height / layers.itemAt(0).sourceSize.height)
                    anchors.centerIn: parent
                    color: !layers.count ?  "black" : (layers.itemAt(0).editor.path) ? "transparent" : "black"
                    property ListModel layerListModel: ListModel {}
                    property Repeater layers: layers_
                    property bool isModified_: false

                    Repeater
                    {
                        id: layers_
                        model: layer.layerListModel
                        EditorView
                        {
                            id: editorView

                            x: parent.width === width ? 0 : - (width - parent.width) / 2
                            y: parent.height === height ? 0 : - (height - parent.height) / 2

                            width: tabContent.width / 5 * 4
                            height: tabContent.height / 5 * 4

                            Component.onCompleted:
                            {
                                if(index === 0)
                                {
                                    Qt.callLater(function()
                                    {
                                        parent.isModified_ = false
                                    });
                                }

                                editor.openImage(pixUrl)
                                // source = "image://editorimage/" + Math.floor(Math.random() * 1000000000000)
                            }
                            TapHandler
                            {
                                onTapped:
                                {
                                    ActiveCtrl.currentEditor = itemAt(index) as Editor
                                }
                            }
                            onModified:
                            {
                                parent.isModified_ = true
                            }
                        }
                    }
                    onHeightChanged:
                    {
                        display_rect.height = height
                    }
                    onWidthChanged:
                    {
                        display_rect.width = width
                    }
                }
            }

            Component.onCompleted:
            {
                layerModel.append({pixUrl: pixUrl_yuan})
            }

            DropArea
            {
                anchors.fill: parent
                onDropped: function(dragEvent)
                {
                    handleDrop(dragEvent)
                }

                function handleDrop(dragEvent)
                {
                    if (dragEvent.hasText)
                    {
                        var url = dragEvent.text;
                        parent.layerModel.append({pixUrl: url});
                        thelayer.isModified_ = true
                    }
                }
            }
            onIsModifiedChanged:
            {
                ActiveCtrl.modified = isModified
            }
        }
    }
    onCurrentIndexChanged:
    {
        var layer_ = (itemAt(currentIndex) ? itemAt(currentIndex).thelayer : null)
        ActiveCtrl.currentLayer = layer_
        ActiveCtrl.modified = (itemAt(currentIndex) ? itemAt(currentIndex).isModified : false)
        Qt.callLater(function()
        {
            ActiveCtrl.size = (itemAt(currentIndex) ? itemAt(currentIndex).imageSize : null)
            var filePath = (itemAt(currentIndex) ? itemAt(currentIndex).filePath : "")
            ActiveCtrl.savePath = filePath
        });
    }
    onCountChanged:
    {
        var layer_ = (itemAt(currentIndex) ? itemAt(currentIndex).thelayer : null)
        ActiveCtrl.currentLayer = layer_
        ActiveCtrl.modified = (itemAt(currentIndex) ? itemAt(currentIndex).isModified : false)
        Qt.callLater(function()
        {
            ActiveCtrl.size = (currentIndex !== -1 ? itemAt(currentIndex).imageSize : null)
            var filePath = (itemAt(currentIndex) ? itemAt(currentIndex).filePath : "")
            ActiveCtrl.savePath = filePath
        });
    }
}

