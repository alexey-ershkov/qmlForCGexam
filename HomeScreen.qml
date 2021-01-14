import QtQuick 2.0
import QtQuick.Controls 2.5
import QtQuick.Controls.Material 2.3

import backend.engine 1.0
import appcore 1.0

Item {
    id: homeScreen

    width: parent.width
    height: parent.height

    AppCore {
        id: app
    }

    Backend {
        id: backend
    }


    Button {
        id: button
        font.pointSize: 45
        anchors.rightMargin: 100
        anchors.leftMargin: 100
        anchors.topMargin: 200
        anchors.bottomMargin: 200
        anchors.fill: parent

        background: Rectangle {
            color: Material.accent
        }

        Text {
            id: buttonText
            text: app.innerNumber
            font.pointSize: 20
            anchors.horizontalCenter: parent.horizontalCenter
            anchors.verticalCenter: parent.verticalCenter
            color: "white"
        }

        onClicked: {
            app.innerNumber = app.innerNumber + 1
        }

    }

    Button {
        id: buttonDefault

        height: 40
        width: 100

        Text {
            id: buttonDefText
            text: "Reset"
            verticalAlignment: Text.AlignVCenter
            horizontalAlignment: Text.AlignHCenter
            font.pointSize: 15

            height: 40
            width: 100

            anchors.horizontalCenter: parent.horizontalCenter
            anchors.verticalCenter: parent.verticalCenter


            color: "white"
        }

        background: Rectangle {
            color: Material.accent
        }

        anchors.bottom: parent.bottom
        anchors.bottomMargin: 30
        anchors.horizontalCenter: parent.horizontalCenter

        onClicked: {
           app.reset()
        }
    }

    Button {
        id: infoButton

        height: 40
        width: 100

        Text {
            id: buttonInfoText
            text: "Info"
            font.pointSize: 15

            anchors.horizontalCenter: parent.horizontalCenter
            anchors.verticalCenter: parent.verticalCenter


            color: "white"
        }

        anchors.top: parent.top
        anchors.topMargin: 30
        anchors.right: parent.right
        anchors.rightMargin: 30

        background: Rectangle {
            color: Material.accent
        }


        onClicked: {
            pageLoader.source = "./InfoScreen.qml"
        }
    }
}

