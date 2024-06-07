import QtQuick
import QtQuick.Controls
import QtQuick.Layouts
import ImageLoader 1.0
import com.activectrl 1.0

StackLayout
{
    id: stackL
    anchors.top: tabBar.bottom
    height: parent.height - tabBar.height
    width: parent.width
    currentIndex: tabBar.currentIndex
    clip: true
    Repeater
    {
        model: pageModel

        Item
        {
            id: tabContent
            Layout.fillWidth: true
            Layout.fillHeight: true
            Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
            property ListModel layerModel: layer.layerListModel
            property Repeater layers: layer.layers
            property Rectangle thelayer: layer
            property string filePath: layers.count ? layers.itemAt(0).editor.path : ""

            Rectangle
            {
                id: layer
                height: !layers.count ? 100 : ((layers.itemAt(0).sourceSize.height) / (layers.itemAt(0).sourceSize.width) >= (parent.height / parent.width)) ? layers.itemAt(0).height : (layers.itemAt(0).sourceSize.height * layers.itemAt(0).width / layers.itemAt(0).sourceSize.width)
                width: !layers.count ? 100 : ((layers.itemAt(0).sourceSize.height) / (layers.itemAt(0).sourceSize.width) <= (parent.height / parent.width)) ? layers.itemAt(0).width : (layers.itemAt(0).sourceSize.width * layers.itemAt(0).height / layers.itemAt(0).sourceSize.height)
                property ListModel layerListModel: ListModel {}
                anchors.centerIn: parent
                color: !layers.count ?  "black" : (layers.itemAt(0).editor.path) ? "transparent" : "black"
                clip: true
                property Repeater layers: layers_
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
                            editor.openImage(pixUrl)
                            source = "image://editorimage/" + Math.floor(Math.random() * 1000000000000)
                        }
                        TapHandler
                        {
                            onTapped:
                            {
                                ActiveCtrl.currentEditor = itemAt(index) as Editor
                            }
                        }
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
                    }
                }
            }
        }
    }
    onCurrentIndexChanged:
    {
        var layer_ = itemAt(currentIndex).thelayer
        ActiveCtrl.currentLayer = layer_
        Qt.callLater(function()
        {
            var filePath = itemAt(currentIndex).filePath
            ActiveCtrl.savePath = filePath
        });
    }
}

