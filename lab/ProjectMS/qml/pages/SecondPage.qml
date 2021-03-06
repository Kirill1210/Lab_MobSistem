import QtQuick 2.0
import Sailfish.Silica 1.0
import "../pages"

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
            y:-50
            Button {
                text: "Открыть конвертор"
                anchors.horizontalCenter: parent.horizontalCenter

                onClicked: {

                    var dialog = pageStack.push(Qt.resolvedUrl("FirstPage.qml"))
                    dialog.accepted.connect(function()
                    {lb1.text = "№1: " + dialog.res1 + " Метров в " + dialog.l1 + " километрах"
                     lb2.text = "№2: " + dialog.res2 + " Секунд в " + dialog.l2 + " часах"
                     lb3.text = "№3: " + dialog.res3 + " Килобайт в " + dialog.l3 + " мегабайтах"
                     lb4.text = "№4: " + dialog.res4 + " Рублей в " + dialog.l4 + " долларах"
                     lb5.text = "№5: " + dialog.res5 + " Миллилитров в " + dialog.l5 + " литрах"
                     lb6.text = "№6: " + dialog.res6 + " Килограмм в " + dialog.l6 + " тоннах"
                     lb7.text = "№7: " + dialog.res7 + " Герц в " + dialog.l7 + " килогерцах"})

}
            }

            Label {
                y:100
                id: lb1;
                anchors.left: parent.left;
                   }

            Label {
                y:200
                id: lb2;
                anchors.left: parent.left;
                   }

            Label {
                y:300
                id: lb3;
                anchors.left: parent.left;
                   }

            Label {
                y:400
                id: lb4;
                anchors.left: parent.left;
                   }

            Label {
                y:500
                id: lb5;
                anchors.left: parent.left;
                  }

            Label {
                y:600
                id: lb6;
                anchors.left: parent.left;
                  }

            Label {
                y:600
                id: lb7;
                anchors.left: parent.left;
                  }

        }
    }



}
