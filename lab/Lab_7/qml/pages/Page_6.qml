import QtQuick 2.0
import Sailfish.Silica 1.0

Page {
    id: page
    allowedOrientations: Orientation.All
    SilicaFlickable {
        anchors.fill: parent
        PullDownMenu {
            MenuItem {
                text: qsTr("Show Page 7")
                onClicked: pageStack.animatorPush(Qt.resolvedUrl("Page_7.qml"))
            }
        }

        contentHeight: column.height
        Column {
            id: column

            width: page.width
            spacing: Theme.paddingLarge
            PageHeader {
                title: qsTr("Задание 6")
            }

            CustomWatch {
                id: cw;
                x: 100;
                y: 300;
            }
        }
    }
}
