import QtQuick 2.0
import QtQuick.Controls 2.5

Item {
    id: infoScreen

    width: parent.width
    height: parent.height

    Text {
        id: element

        width: 250
        height: 100

        text: qsTr("Created as an QML example for CG course in BMSTU by Alexey Ershkov RK6-53B")

        anchors.horizontalCenter: parent.horizontalCenter
        anchors.verticalCenter: parent.verticalCenter

        verticalAlignment: Text.AlignVCenter
        horizontalAlignment: Text.AlignHCenter
        wrapMode: Text.WordWrap
        fontSizeMode: Text.FixedSize
        lineHeight: 1
        opacity: 1
        font.pixelSize: 12
    }

    Button {
        id: backButton

        width: 40
        height: 40

        text: qsTr(" ←")

        anchors.top: parent.top
        anchors.topMargin: 30
        anchors.left: parent.left
        anchors.leftMargin: 30

        onClicked: {
            pageLoader.source = "./HomeScreen.qml"
        }
    }


}

/*##^##
Designer {
    D{i:2;anchors_x:42;anchors_y:87}
}
##^##*/
