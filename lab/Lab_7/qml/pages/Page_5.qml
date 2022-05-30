import QtQuick 2.0
import Sailfish.Silica 1.0

Page {
    id: page
    allowedOrientations: Orientation.All
    SilicaFlickable {
        anchors.fill: parent
        PullDownMenu {
            MenuItem {
                text: qsTr("Show Page 6")
                onClicked: pageStack.animatorPush(Qt.resolvedUrl("Page_6.qml"))
            }
        }
        contentHeight: column.height
        Column {
            id: column

            width: page.width
            spacing: Theme.paddingLarge
            PageHeader {
                title: qsTr("Задание 5")
            }

            CustomButton {
                id: customButton;
                x: 200;
                y: 500;
                Label { text: "Кнопка" }
                setColor: "red"
            }
        }
    }
}
