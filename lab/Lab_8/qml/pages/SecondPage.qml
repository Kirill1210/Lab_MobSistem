import QtQuick 2.0
import Sailfish.Silica 1.0
import com.liststrings 1.0

Page {
    id: page
    allowedOrientations: Orientation.All

    SilicaFlickable {
        anchors.fill: parent

        PullDownMenu {
            MenuItem {
                text: qsTr("Показать 1 задание")
                onClicked: pageStack.animatorPush(Qt.resolvedUrl("FirstPage.qml"))
            }
        }

        contentHeight: column.height

        ListStrings {
            id: listst
        }

        Column {
            id: column

            width: page.width
            spacing: Theme.paddingLarge
            PageHeader {
                title: qsTr("Задание 2")
            }

            TextField {
                id: tf;
                anchors.verticalCenter:verticalCenter
                placeholderText: "Введите слово"
            }

            Button {
                anchors.verticalCenter:verticalCenter
                text: "Добавит слово"
                onClicked: {

                    listst.addInList(tf.text)
                    label.text = listst.getAllList();
                }
            }

            Button {
                text: "Удалить последнее слово"
                onClicked: {
                    listst.removeBackElem();
                    label.text = listst.getAllList();
                }
            }

            TextField {
                id: label;
                width: parent.width;
                x: Theme.horizontalPageMargin
                text: listst.getAllList()
                readOnly: true;
            }
        }
    }
}

