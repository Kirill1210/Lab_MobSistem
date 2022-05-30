import QtQuick 2.0
import Sailfish.Silica 1.0

Page {
    property var dataModel: [
        { color: "white", text: "Белый", color_text: "Black" },
        { color: "Black", text: "Черный", color_text: "White" },
        { color: "Blue", text: "Синий", color_text: "White" }
    ]

    SilicaListView {
        PullDownMenu {
            MenuItem {
                text: qsTr("Show Page 4")
                onClicked: pageStack.animatorPush(Qt.resolvedUrl("Page_4.qml"))
            }
        }

        anchors.fill: parent
        header: PageHeader { title: "Задание 3" }
        model: dataModel
        spacing: 10
        delegate: Rectangle {
            width: parent.width
            height: 100
            color: modelData.color
            Text {
                anchors.centerIn: parent
                text: modelData.text
                color:  modelData.color_text
            }
        }
    }
}
