import QtQuick 2.0
import Sailfish.Silica 1.0

Page {
    id: page
    allowedOrientations: Orientation.All

    Column {
        id: column

        width: page.width
        spacing: Theme.paddingLarge


        Label {
            anchors.right: parent.right;
            text: "Вторая страница"
        }

        Button {
            text: "Назад";
            anchors.horizontalCenter: parent.horizontalCenter;
            onClicked: pageStack.push(Qt.resolvedUrl("PushAttachedPage.qml"));
        }
    }
}
