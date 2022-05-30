import QtQuick 2.0
import Sailfish.Silica 1.0

Page {
    id: page;
    ListModel { id: dataModel; }

    Column {
        height: parent.height;
        width: parent.width;
        PageHeader { title: "Задание 2" }

        Button {
            id: bt1
            anchors.horizontalCenter: parent.horizontalCenter
            text: "Следующая страница"
            onClicked: pageStack.animatorPush(Qt.resolvedUrl("Page_3.qml"))
        }


        Button {
            id: addButton
            anchors.horizontalCenter: parent.horizontalCenter
            text: "Добавить"
            onClicked: {
                dataModel.append({ text: "Элемент " + sv.count});
                sv.count++;
            }
        }

        SilicaListView {
            id: sv;
            property int count: 1;
            width: parent.width; height: parent.height
            model: dataModel
            spacing: 10;
            delegate: Rectangle {
                width: parent.width; height: 70; color: "skyblue";
                Text {
                    anchors.centerIn: parent
                    text: model.text;
                }
                Button {
                    anchors.centerIn: parent
                    height: parent.height;
                    width: parent.width;
                    onClicked: dataModel.remove(model.index);
                }
            }
        }
    }
}
