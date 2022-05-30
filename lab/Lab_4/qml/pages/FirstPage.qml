import QtQuick 2.0
import Sailfish.Silica 1.0

Page {
    id: page

    // The effective value will be restricted by ApplicationWindow.allowedOrientations
    allowedOrientations: Orientation.All

    // To enable PullDownMenu, place our content in a SilicaFlickable
    SilicaFlickable {
        anchors.fill: parent

        // PullDownMenu and PushUpMenu must be declared in SilicaFlickable, SilicaListView or SilicaGridView
        PullDownMenu {
            MenuItem {
                text: qsTr("Показать 2 страницу")
                onClicked: pageStack.push(Qt.resolvedUrl("SecondPage.qml"))
            }
        }

        // Tell SilicaFlickable the height of its content.
        contentHeight: column.height

        // Place our content in a Column.  The PageHeader is always placed at the top
        // of the page, followed by our content.
        Column {
            id: column
            width: page.width
            spacing: Theme.paddingLarge
            PageHeader {
                title: qsTr("Страница 1")
            }

            TextField {
                width: parent.width
                inputMethodHints:
                Qt.ImhDialableCharactersOnly
                validator: RegExpValidator{regExp:/^(\s*)?(\+)?([- _():=+]?\d[- _():=+]?){10,14}(\s*)?$/}
                label: "Номер телефона"
                placeholderText: label
                placeholderColor: Theme.highlightColor
                color: Theme.highlightColor
            }

            Button {
                property bool a: false
                down: a
                anchors.horizontalCenter:
                parent.horizontalCenter
                color: "white"
                text: "Кнопка"
                onClicked: if(a)
                               a = false
                           else
                               a = true;
            }
            Button{
                id: bt
                anchors.horizontalCenter:
                parent.horizontalCenter
                color: "white"
                text: "Кнопка"
            }
            Label{
                anchors.horizontalCenter:
                parent.horizontalCenter
                text: if(bt.down)
                          "Нажата"
                      else
                          "Опущена"

            }
            ValueButton {
            property int a: 0
            label: "Счётчик"
            description: "Считает количество нажатий"
            value: a
            onClicked: a++
            }

        }
    }
}
