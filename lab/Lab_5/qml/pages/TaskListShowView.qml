import QtQuick 2.0
import Sailfish.Silica 1.0

Page {

    ListModel {
        id: taskModel
        ListElement { task: "Сделать задачу 4"; datas: "20.04.2020"; color_text: "white"; }
        ListElement { task: "Сделать задачу 3"; datas: "19.04.2020"; color_text: "white"; }
        ListElement { task: "Сделать задачу 2"; datas: "18.04.2020"; color_text: "white"; }
        ListElement { task: "Сделать задачу 1"; datas: "17.04.2020"; color_text: "white"; }
    }

    Button {
        text: "К заданию 9";
        anchors.horizontalCenter: parent.horizontalCenter;
        onClicked: pageStack.push(Qt.resolvedUrl("PullDownAndPushUpMenu.qml"));
    }

    SlideshowView {
        id: view
        anchors.centerIn: parent
        height: width
        itemHeight: width; itemWidth: width;

        model: taskModel
        delegate: Item {
            width: view.itemWidth;
            height: view.itemHeight;

            SectionHeader { text: datas }

            Text { text: task; color: color_text ; anchors.centerIn: parent}
        }
    }
}
