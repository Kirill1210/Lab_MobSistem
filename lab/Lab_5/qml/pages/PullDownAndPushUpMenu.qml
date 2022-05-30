import QtQuick 2.0
import Sailfish.Silica 1.0

Page {
    id: page
    allowedOrientations: Orientation.All

    SilicaFlickable {
        anchors.fill: parent
        contentHeight: column.height

        PullDownMenu {
            MenuLabel { text: qsTr("Верхнее меню") }

            MenuItem {
                text: qsTr("К заданию 10")
                onClicked: pageStack.animatorPush(Qt.resolvedUrl("ListAndContextMenu.qml"))
            }
            MenuItem {
                text: "Пункт меню 1"
                onClicked: lb.text = "Пункт верхнего меню 1"
            }
            MenuItem {
                text: "Пункт меню 2"
                onClicked: lb.text = "Пункт верхнего меню 2"
            }
        }

        PushUpMenu {
            MenuLabel { text: qsTr("Menu Label") }
            MenuItem {
                text: "Пункт меню 1"
                onClicked: lb.text = "Пункт нижнего меню 1"
            }
            MenuItem {
                text: "Пункт меню 2"
                onClicked: lb.text = "Пункт нижнего меню 2"
            }
         }


        Column {
            id: column
            width: page.width
            spacing: Theme.paddingLarge

            PageHeader {
                title: qsTr("Вытягиваемые меню")
            }

            Label {
                id: lb;
                anchors.horizontalCenter: parent.horizontalCenter;
                text: "Результат пока пуст";
            }
        }
    }
}
