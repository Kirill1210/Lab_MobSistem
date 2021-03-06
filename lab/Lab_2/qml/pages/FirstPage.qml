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
                text: qsTr("Show Page 2")
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

            Column {
             width: page.width
             spacing: 10


             Button {
              text: "Добавить 1"
              color: "lightcyan"
              width: parent.width
              onClicked: {
              text.a++;
              }

             }



             Rectangle {
              color: "#80191970"
              radius: 10.0
              width: parent.width
              height: 150

              Text {
               id: text
               property int a: 0
               text: a
               font.pointSize: 50
               anchors.centerIn: parent
               color: "lightcyan"

              }

        }
    }
}
}
}
