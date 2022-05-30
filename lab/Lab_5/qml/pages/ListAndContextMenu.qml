import QtQuick 2.0
import Sailfish.Silica 1.0

Page {
    id: page
    allowedOrientations: Orientation.All

    SilicaFlickable {
        anchors.fill: parent


        PullDownMenu {
            MenuItem {
                text: qsTr("К заданию 1")
                onClicked: pageStack.animatorPush(Qt.resolvedUrl("CreatePages.qml"))
            }
        }

        SilicaListView {
            anchors.fill: parent
            model: 15
            delegate: ListItem {
                id: delegate
                Label {
                    x: Theme.paddingLarge
                    text: "Строка списка #" + index
                    color: delegate.highlighted ? Theme.highlightColor : Theme.primaryColor
                }
                menu: ContextMenu {
                    MenuLabel { text: "Контекстное меню" }
                    MenuItem {
                        text: "Пункт 1"
                        onClicked: console.log("Пункт 1. Строка списка " + index)
                    }
                    MenuItem {
                        text: "Пункт 2"
                        onClicked: console.log("Пункт 2. Строка списка " + index)
                    }
                    MenuItem {
                        text: "Пункт 3"
                        onClicked: console.log("Пункт 3. Строка списка " + index)
                    }
                    MenuItem {
                        text: "Пункт 4"
                        onClicked: console.log("Пункт 4. Строка списка " + index)
                    }
                    MenuItem {
                        text: "Пункт 5"
                        onClicked: console.log("Пункт 5. Строка списка " + index)
                    }
                }
            }
        }

}
}
