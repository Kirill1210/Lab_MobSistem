import QtQuick 2.0

Item {
    property string setColor: "white"
    property string setOpacity: "0.2"

    anchors.horizontalCenter: parent.horizontalCenter;
    width: 100
    height: 100
    Rectangle {
        radius: 100;
        anchors.fill: parent
        color: setColor
        opacity: setOpacity
    }
}
