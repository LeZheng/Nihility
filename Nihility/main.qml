import QtQuick 2.14
import QtQuick.Controls 2.14
import QtQuick.Particles 2.14
import QtQuick.Window 2.14
import "LispForms"

ApplicationWindow {
    id: window
    visible: true
    height: 300
    width: 400
    x: (Screen.width - width) / 2
    y: (Screen.height - height) / 2
    title: qsTr("Nihility")
    flags: Qt.Window | Qt.FramelessWindowHint

    background: Image {
        source: "images/def-bg"
        fillMode: Image.PreserveAspectCrop
        clip: true
    }

    ParticleSystem {
        id: particleSystem
        width: 1024
        height: 768
        ItemParticle {
            delegate: Rectangle {
                id: rect
                width: 10
                height: 10
                color: "red"
                radius: 2
            }
        }

        Emitter {
            x: 100
            velocity: PointDirection {
                y: 600
                x: 800
                yVariation: 100
            }
        }
    }

    Splash {
        id: splash
        opacity: 0.3
        height: 300
        width: 400
    }

    Timer {
        interval: 3000
        running: true
        repeat: false
        onTriggered: {
            console.log("timer trigger")
            splash.destroy()

            //            window.width = 1024
            //            window.height = 768
            windowAnimation.start()
            window.flags = window.flags & ~Qt.FramelessWindowHint
        }
    }

    PropertyAnimation {
        id: windowAnimation
        target: window
        properties: "height, width"
        duration: 1000
        to: 800
        easing.type: Easing.OutElastic
    }
}
