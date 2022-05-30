import QtQuick 2.0
import Sailfish.Silica 1.0

Page {
    id: page
    property int count: 0;
    allowedOrientations: Orientation.All
    SilicaFlickable {
        anchors.fill: parent
        PullDownMenu {
            MenuItem {
                text: qsTr("Show Page 1")
                onClicked: pageStack.animatorPush(Qt.resolvedUrl("Page_1.qml"))
            }
        }
        contentHeight: column.height


        Column {
            id: column

            width: page.width
            spacing: Theme.paddingLarge
            PageHeader {
                title: qsTr("Задание 7")
            }
            Label {
                x: Theme.horizontalPageMargin
                text: "PageStack - " + current;
                color: Theme.secondaryHighlightColor
                font.pixelSize: Theme.fontSizeExtraLarge
            }
        }
    }
}
