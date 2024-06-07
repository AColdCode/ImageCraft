import QtQuick
import QtQuick.Dialogs
import QtQuick.Controls
import com.activectrl 1.0

Item
{
    property var sharePage
    property FileDialog openFileDialog: null
    property Dialog newImageDialog: null
    property FileDialog savePathDialog: null

    openFileDialog: FileDialog
    {
        id: openFileDialog_
        title: qsTr("Open File")
        nameFilters: ["Images files (*.png *.jpg)"]

        onAccepted:
        {
            var imageUrl = openFileDialog_.selectedFile.toString()
            var fileName = imageUrl.substring(imageUrl.lastIndexOf("/") + 1) // 获取文件名

            sharePage.append({ pageName: fileName,pixUrl_yuan: imageUrl})
        }
    }


    newImageDialog:Dialog
    {
        id:canvasDialog
        title:"选择画布"
        modal:true
        standardButtons: Dialog.Ok | Dialog.Cancel

        Row
        {
            spacing: 10

            Repeater
            {
                model:
                [
                    {width: 1600, height: 900, sizeText: "1600x900像素" ,pixUrl_yuan:"/Image/new1600x900.png"},
                    {width: 900, height: 600, sizeText: "900x600像素" ,pixUrl_yuan:"/Image/new900x600.png"},
                    {width: 600, height: 900, sizeText: "600x900像素" ,pixUrl_yuan:"/Image/new600x900.png"},
                ]
                delegate: Item
                {
                    width: 200
                    height: 200

                    Rectangle
                    {
                        id:rect
                        width: 200
                        height: 150
                        border.color: "black"
                        property string pixUrl: modelData.pixUrl_yuan
                        Rectangle
                        {
                            width: modelData.width/10
                            height: modelData.height/10
                            color: "lightblue"
                            anchors.centerIn: parent
                        }
                        Text
                        {
                            text: modelData.sizeText
                            anchors
                            {
                                horizontalCenter: parent.horizontalCenter
                                bottom: rect.bottom
                            }
                        }
                        TapHandler
                        {
                            onTapped:
                            {
                                sharePage.append({pageName:"untitled", pixUrl_yuan: rect.pixUrl})
                                canvasDialog.accept()
                            }
                        }
                    }
                }
            }
        }
    }

    savePathDialog: FileDialog
    {
        id: savePathDialog
        title: qsTr("Select Save Path")
        nameFilters: ["Images files (*.png *.jpg)"]
        fileMode: FileDialog.SaveFile

        onAccepted:
        {
            var savePath = savePathDialog.selectedFile.toString()
            ActiveCtrl.savePath = savePath.substring(7)
            ActiveCtrl.save()
        }
    }

    Component.onCompleted:
    {
        ActiveCtrl.dialogBox = openFileDialog
        ActiveCtrl.newDialogBox = newImageDialog
        ActiveCtrl.savePathDialod = savePathDialog
    }
}
