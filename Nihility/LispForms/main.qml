import QtQuick 2.14
import QtQuick.Controls 2.14

ApplicationWindow {
    visible: true
    width: 640
    height: 480
    title: qsTr("Nihility")

    Column {
        anchors.centerIn: parent

        RadioButton {
            text: qsTr("Small")
        }
        RadioButton {
            text: qsTr("Medium")
            checked: true
        }
        RadioButton {
            text: qsTr("Large")
        }

        Apply {}
    }
}
