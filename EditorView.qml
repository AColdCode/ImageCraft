import QtQuick
import QtQuick.Controls
import ImageLoader


Image
{
    id: imageView
    property Editor editor: editor1
    fillMode: Image.PreserveAspectFit

    Editor
    {
        id: editor1
    }

    Connections
    {
        target: editor
        function onImageChanged()
        {
            imageProvider.setImage(editor.image)
            imageView.source = "image://editorimage/" + Math.floor(Math.random() * 1000000000000)
        }
    }
}
