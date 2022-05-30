import QtQuick 2.0
import Sailfish.Silica 1.0

Item {
    property string setColor: "blue"
    default property var someText

    Rectangle {
        height: 100;
        width: 300;
        radius: 20;
        color: setColor
        Button {
            height: parent.height;
            width: parent.width;
            anchors.horizontalCenter: parent.horizontalCenter;
            anchors.verticalCenter: parent.verticalCenter;
            Label {
                anchors.horizontalCenter: parent.horizontalCenter;
                anchors.verticalCenter: parent.verticalCenter;
                text: someText.text
            }
        }
    }
}

