import QtQuick 2.0

ApplyForm {

    Connections {
        target: fun
        function onTextChanged() {
            console.log("textChanged...")
        }
    }
}
