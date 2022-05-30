import QtQuick 2.0
import Sailfish.Silica 1.0

Page {
    id: page
    allowedOrientations: Orientation.All

    SilicaFlickable {
        anchors.fill: parent
        contentHeight: column.height

        PullDownMenu {
            MenuItem {
                text: qsTr("К заданию 4")
                onClicked: pageStack.animatorPush(Qt.resolvedUrl("PageDialogCalendar.qml"))
            }
        }

        Column {
            id: column
            width: page.width
            spacing: Theme.paddingLarge

            PageHeader {
                title: qsTr("Диалог с текстом")
            }

            Button {
                text: "Открыть диалог"
                anchors.horizontalCenter: parent.horizontalCenter

                onClicked: {
                    var dialog = pageStack.push(Qt.resolvedUrl("DialogText.qml"))
                    dialog.accepted.connect(function() { lb.text = "Результат: " + dialog.res
                    })
                }
            }

            Label {
                id: lb;
                anchors.horizontalCenter: parent.horizontalCenter;
                text: "Результат пока пуст";
            }
        }
    }
}
