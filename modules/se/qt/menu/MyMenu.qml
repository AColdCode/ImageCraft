import QtQuick
import QtQuick.Controls
import QtQuick.Dialogs

MenuBar
{
    id: menuBar
    required property ListModel sharePage
    width: parent.width
    Menu_File
    {
        sharePage: menuBar.sharePage
    }
    Menu_Edit{}
    Menu_Graphics{}
    Menu_Layer {}
    Menu_Word {}
    Menu_Select {}
    Menu_Filter {}
    Menu_View {}
    Menu_Window {}
    Menu_Help{}
}

