import QtQuick 2.0
import Sailfish.Silica 1.0

Page {
    id: page
    allowedOrientations: Orientation.All

    ListModel {
        id: dataModel
        ListElement { color: "white"; text: "Белый"; color_text: "Black"}
        ListElement { color: "black"; text: "Черный"; color_text: "White" }
        ListElement { color: "blue"; text: "Синий"; color_text: "White" }
    }

    SilicaListView {
        PullDownMenu {
            MenuItem {
                text: qsTr("Show Page 2")
                onClicked: pageStack.animatorPush(Qt.resolvedUrl("Page_2.qml"))
            }
        }

        anchors.fill: parent
        header: PageHeader { title: "Задание 1" }
        model: dataModel
        delegate: Rectangle {
            width: parent.width
            height: 100
            color: model.color
            Text {
                anchors.centerIn: parent
                text: model.text
                color: model.color_text
            }
        }
    }
}
