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
            property EditorView editorView: rect.editorView
            Rectangle
            {
                id: rect
                property EditorView editorView: null
                color: "black"
                anchors.centerIn: parent
                height: parent.height / 5 * 4
                width: parent.width / 5 * 4
                clip: true
                editorView: EditorView
                {
                    parent: rect
                    id: editorView
                    anchors.centerIn: parent
                    width: parent.width - 50
                    height: parent.height - 50
                    Component.onCompleted:
                    {
                        editor.openImage(pixUrl_yuan)
                        source = "image://editorimage/" + Math.floor(Math.random() * 1000000000000)
                    }
                }
            }
        }
    }
    onCurrentIndexChanged:
    {
        var currentItem = itemAt(currentIndex)
        currentEditor = currentItem ? currentItem.editorView.editor : null
    }
}

