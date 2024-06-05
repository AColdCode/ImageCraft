import QtQuick
import QtQuick.Dialogs
import com.activectrl 1.0

Item
{
    property var sharePage
    property FileDialog openFileDialog: null
    openFileDialog: FileDialog
    {
        id: openFileDialog_
        title: "Open File"
        nameFilters: ["Images files (*.png *.jpg)"]

        onAccepted:
        {
            var imageUrl = openFileDialog_.selectedFile.toString()
            var fileName = imageUrl.substring(imageUrl.lastIndexOf("/") + 1) // 获取文件名

            sharePage.append({ pageName: fileName,pixUrl_yuan: imageUrl})
        }
    }

    Component.onCompleted:
    {
        ActiveCtrl.dialogBox = openFileDialog
    }
}
