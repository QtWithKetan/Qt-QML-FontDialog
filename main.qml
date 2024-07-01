import QtQuick 2.15
import QtQuick.Window 2.15
import QtQuick.Controls 2.15
import QtQuick.Dialogs 1.3

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")   

    Button
    {
        id:myButton
        text: "Click Me."
        font: myFontDialog.font
        onClicked:
        {
            myFontDialog.open()
        }
    }

    FontDialog
    {
        id:myFontDialog
        onAccepted:
        {
            console.log("Weight : " + myFontDialog.font.weight)
            console.log("Is Bold : " + myFontDialog.font.bold)
            console.log("Is Italic : " + myFontDialog.font.italic)
            console.log("Is Strikeout : " + myFontDialog.font.strikeout)
            console.log("Is Underline : " + myFontDialog.font.underline)
            console.log("Famliy : " + myFontDialog.font.family)
            console.log("Font Size : " + myFontDialog.font.pointSize)
        }
    }
}
