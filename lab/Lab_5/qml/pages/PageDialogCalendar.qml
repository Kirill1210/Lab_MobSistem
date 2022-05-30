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
                text: qsTr("К заданию 5")
                onClicked: pageStack.animatorPush(Qt.resolvedUrl("PageDialogWatch.qml"))
            }
        }

        Column {
            id: column
            width: page.width
            spacing: Theme.paddingLarge

            PageHeader {
                title: qsTr("Диалог с календарем")
            }

            Button {
                text: "Открыть диалог"
                anchors.horizontalCenter: parent.horizontalCenter

                onClicked: {
                    var dialog = pageStack.push("Sailfish.Silica.DatePickerDialog",
                        {date: new Date()});
                    dialog.accepted.connect(function() {
                        lb.text = (dialog.date);
                    });

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
