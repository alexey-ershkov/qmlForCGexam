import QtQuick 2.13
import QtQuick.Window 2.13
import QtQuick.Controls 2.5
import QtQuick.Controls.Material 2.3

ApplicationWindow {
    id: window
    visible: true
    width: 640
    height: 480
    title: qsTr("Test programm")


    color: "blue"


    Loader {
        id: pageLoader
        anchors.fill: parent
        source: "./HomeScreen.qml"
    }
}
