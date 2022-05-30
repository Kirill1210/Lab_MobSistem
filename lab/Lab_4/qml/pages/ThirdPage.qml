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
                text: qsTr("Show Page 3")
                onClicked: pageStack.push(Qt.resolvedUrl("ThirdPage.qml"))
            }
        }

        // Tell SilicaFlickable the height of its content.
        contentHeight: column.height

        // Place our content in a Column.  The PageHeader is always placed at the top
        // of the page, followed by our content.

    }

        // Place our content in a Column.  The PageHeader is always placed at the top
        // of the page, followed by our content.

    Column {
        width: parent.width

        ComboBox {
            label: "Количество машин"
            description: "Марки"
            menu: ContextMenu {
            MenuItem { text: "BMW" }
            MenuItem { text: "Mercedes-Benz" }
            MenuItem { text: "Volkswagen" }
            MenuItem { text: "Mazda" }
            MenuItem { text: "Fiat" }
            MenuItem { text: "Audi" }
            }
            onCurrentIndexChanged: console.log(value)
        }

    TextSwitch {
         property bool a: false
         down: a
         text: if(down)
                    "ВКЛ"
               else
                   "ВЫКЛ"
         onClicked: if(a)
                        a = false
                    else
                        a = true;
    }
    Slider {
        id: sl
        width: parent.width
        label: "Количество: " + value
        maximumValue: 100
        minimumValue: 0
        value: 10
        stepSize: 1
    }

    }
}
