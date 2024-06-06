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
            Layout.fillWidth: true
            Layout.fillHeight: true
            Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
            property ListModel layerModel: rect.layerListModel
            property Repeater layers: rect.layers
            property Rectangle thelayer: layer
            Rectangle
            {
                id: rect
                property Repeater layers: layer.layers
                property ListModel layerListModel: ListModel {}
                color: "black"
                anchors.centerIn: parent
                height: parent.height / 5 * 4
                width: parent.width / 5 * 4
                clip: true
                Rectangle
                {
                    id: layer
                    anchors.fill: parent
                    color: "transparent"
                    property Repeater layers: layers_
                    Repeater
                    {
                        id: layers_
                        model: rect.layerListModel
                        EditorView
                        {
                            id: editorView
                            anchors.centerIn: parent
                            width: parent.width - 50
                            height: parent.height - 50
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
                    layerListModel.append({pixUrl: pixUrl_yuan})
                    // layerListModel.append({pixUrl: "file:///run/media/root/Study/Images/t1.jpg"})
                    // layerListModel.append({pixUrl: "file:///run/media/root/Study/Images/t2.jpg"})
                    // layerListModel.append({pixUrl: "file:///run/media/root/Study/Images/t3.jpg"})
                    // layerListModel.append({pixUrl: "file:///run/media/root/Study/Images/t4.jpg"})
                    // layerListModel.append({pixUrl: "file:///run/media/root/Study/Images/t5.jpg"})
                    // layerListModel.append({pixUrl: "file:///run/media/root/Study/Images/t6.jpg"})
                    // layerListModel.append({pixUrl: "file:///run/media/root/Study/Images/t7.jpg"})
                    // layerListModel.append({pixUrl: "file:///run/media/root/Study/Images/m1.jpg"})
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
                            parent.layerListModel.append({pixUrl: url});
                        }
                    }
                }

            }
        }
    }
    onCurrentIndexChanged:
    {
        var layer_ = itemAt(currentIndex).thelayer
        ActiveCtrl.currentLayer = layer_
    }
}

