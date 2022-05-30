import QtQuick 2.0
import Sailfish.Silica 1.0

Page {
    id: page
    allowedOrientations: Orientation.All

    SilicaFlickable {
        anchors.fill: parent
        contentHeight: column.height


        Column {
            id: column
            width: page.width
            spacing: Theme.paddingLarge

            PageHeader {
                title: qsTr("Конвертирование")
            }

            Button {
                text: "Открыть конвертор"
                anchors.horizontalCenter: parent.horizontalCenter

                onClicked: {

                    var dialog = pageStack.push(Qt.resolvedUrl("FirstPage.qml"))
                    dialog.accepted.connect(function()
                    {lb1.text = "Результат №1: " + dialog.res1 + " Метров"
                     lb11.text = "Результат №2: " + dialog.res11 + " Километров"
                     lb2.text = "Результат №3: " + dialog.res2 + " Секунд"
                     lb22.text = "Результат №4: " + dialog.res22 + " Часов"
                     lb3.text = "Результат №5: " + dialog.res3 + "  Мегабайт"
                     lb33.text = "Результат №6: " + dialog.res33 + " Гигабайт"
                     lb4.text = "Результат №7: " + dialog.res4 + " Рублей"
                     lb44.text = "Результат №8: " + dialog.res44 + " Долларов"
                     lb5.text = "Результат №9: " + dialog.res5 + " Миллилитров"
                     lb55.text = "Результат №10: " + dialog.res55 + " Литров"
                     lb6.text = "Результат №11: " + dialog.res6 + " Килограмм"
                     lb66.text = "Результат №12: " + dialog.res66 + " Тонн"})





}
            }

            Label {
                y:100
                id: lb1;
                anchors.left: parent.left;

            }
            Label {
                y:200
                id: lb11;
                anchors.left: parent.left;

            }

            Label {
                y:300
                id: lb2;
                anchors.left: parent.left;

            }
            Label {
                y:400
                id: lb22;
                anchors.left: parent.left;

            }

            Label {
                y:500
                id: lb3;
                anchors.left: parent.left;

            }
            Label {y:600
                id: lb33;
                anchors.left: parent.left;

            }

            Label {
                y:700
                id: lb4;
                anchors.left: parent.left;

            }
            Label {
                y:800
                id: lb44;
                anchors.left: parent.left;

            }

            Label {
                y:900
                id: lb5;
                anchors.left: parent.left;

            }
        }

        Label {
            y:1000
            id: lb55;
            anchors.left: parent.left;

        }

            Label {
                y:1100
                id: lb6;
                anchors.left: parent.left;

            }
            Label {
                y:1200
                id: lb66;
                anchors.left: parent.left;

            }
        }
    }


