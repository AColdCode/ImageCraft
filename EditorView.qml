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

    source: "data:image/png;base64," + editor.imageToBase64()

    Connections
    {
        target: editor
        function onImageChanged()
        {
            imageView.source = "data:image/png;base64," + editor.imageToBase64()
        }
    }
}

