import QtQuick 2.0
import Sailfish.Silica 1.0

Page {
    id: page
    allowedOrientations: Orientation.All

    SilicaFlickable {
        anchors.fill: parent
        contentHeight: column.height

        // @disable-check M301
        PullDownMenu {
            MenuItem {
                text: qsTr("К заданию 2")
                onClicked: pageStack.animatorPush(Qt.resolvedUrl("PushAttachedPage.qml"))
            }
        }

        Column {
            id: column
            width: page.width
            spacing: Theme.paddingLarge

            PageHeader {
                title: qsTr("Стек страниц")
            }

            Button {
                text: "Добавить";
                anchors.horizontalCenter: parent.horizontalCenter;
                onClicked: pageStack.push(Qt.resolvedUrl("CreatePages.qml"));
            }

            Button {
                text: "Удалить";
                anchors.horizontalCenter: parent.horizontalCenter;
                onClicked: pageStack.pop();
            }

            Label {
                anchors.horizontalCenter: parent.horizontalCenter;
                text: "Глубина стека: " + pageStack.depth;
            }
        }
    }
}
