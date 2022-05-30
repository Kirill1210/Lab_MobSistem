import QtQuick 2.0
import Sailfish.Silica 1.0

Page {
    id: page
    allowedOrientations: Orientation.All

    SilicaFlickable {
        anchors.fill: parent
        contentHeight: column.height

        PullDownMenu {
            MenuItem {
                text: qsTr("К заданию 3")
                onClicked: pageStack.animatorPush(Qt.resolvedUrl("PageDialogText.qml"))
            }
        }

    Column {
        id: column
        width: page.width
        spacing: Theme.paddingLarge

        PageHeader {
            title: qsTr("Прикрепленные страницы")
        }


        Label {
            anchors.right: parent.right;
            text: "Первая страница"
        }

        Button {
            text: "Добавить страницу";
            anchors.horizontalCenter: parent.horizontalCenter;
            onClicked: pageStack.pushAttached(Qt.resolvedUrl("PushAttachedPage_2.qml"));
        }

        Button {
            text: "Удалить странциу";
            anchors.horizontalCenter: parent.horizontalCenter;
            onClicked: pageStack.popAttached();
        }
    }
    }

}
