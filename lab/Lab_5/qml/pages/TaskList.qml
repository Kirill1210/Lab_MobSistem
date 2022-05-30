import QtQuick 2.0
import Sailfish.Silica 1.0

Page {

    ListModel {
        id: taskModel
        ListElement { task: "Задание 1"; data: "20.04.2022"; color_text: "white"; }
        ListElement { task: "Задание 2"; data: "22.04.2022"; color_text: "white"; }
        ListElement { task: "Задание 3"; data: "23.04.2022"; color_text: "white"; }
        ListElement { task: "Задание 4"; data: "24.04.2022"; color_text: "white"; }
        ListElement { task: "Задание 5"; data: "24.04.2022"; color_text: "white"; }
        ListElement { task: "Задание 6"; data: "24.04.2022"; color_text: "white"; }
    }
    SilicaListView {

        PullDownMenu {
            MenuItem {
                text: qsTr("К заданию 7")
                onClicked: pageStack.animatorPush(Qt.resolvedUrl("Browser.qml"))
            }
        }


        anchors.fill: parent
        model: taskModel
        header: PageHeader { title: "Задачи" }

        section {
            property: 'data'
            delegate: SectionHeader { text: section }
        }

        delegate: Text { text: task; color: color_text; }
    }
}
