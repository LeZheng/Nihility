import QtQuick 2.4
import QtQuick.Layouts 1.12

Rectangle {
    id: apply
    border.color: "blue"
    border.width: 2
    radius: 5
    antialiasing: true
    width: 400
    height: 400

    property var fun: teFunction
    property var args: teArguments

    ColumnLayout {
        RowLayout {
            Text {
                id: textFunction
                text: qsTr("function:")
            }
            TextEdit {
                id: teFunction
                Layout.minimumWidth: 200
            }
        }
        RowLayout {
            Text {
                id: textArgs
                text: qsTr("arguments:")
            }
            TextEdit {
                id: teArguments
                Layout.minimumWidth: 200
            }
        }
    }
}
