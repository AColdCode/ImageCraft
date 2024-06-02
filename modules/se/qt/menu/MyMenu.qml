import QtQuick
import QtQuick.Controls
import QtQuick.Dialogs

MenuBar
{
    id: menuBar
    property var sharePage
    width: parent.width
    Menu_File{}
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

