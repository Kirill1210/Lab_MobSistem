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
                text: qsTr("Показать 3 страницу")
                onClicked: pageStack.push(Qt.resolvedUrl("ThirdPage.qml"))
            }
        }

        // Tell SilicaFlickable the height of its content.
        contentHeight: column.height

        // Place our content in a Column.  The PageHeader is always placed at the top
        // of the page, followed by our content.
        PageHeader {
            title: qsTr("Страница 2")
        }

    }

Column{
    y:200
    id: column
    width: page.width
    spacing: Theme.paddingLarge


    DatePicker {
        id: datePicker
        daysVisible: true
        weeksVisible: true

        onDateChanged: console.log (datePicker.dateText)

    }

    Item {
        height: timePicker.height
        width: parent.width
        TimePicker {
            anchors.horizontalCenter:
            parent.horizontalCenter
            id: timePicker
            hour: 00
            minute: 00
            onHourChanged: console.log(timeText)
            onMinuteChanged: console.log(timeText)

        }
        Label {
            anchors.centerIn: timePicker
            text: timePicker.timeText
            font.pixelSize: Theme.fontSizeExtraLarge
        }
    }
}


}
