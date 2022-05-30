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
                text: qsTr("К заданию 6")
                onClicked: pageStack.animatorPush(Qt.resolvedUrl("TaskList.qml"))
            }
        }

        Column {
            id: column
            width: page.width
            spacing: Theme.paddingLarge

            PageHeader {
                title: qsTr("Диалог с часами")
            }

            Button {
                text: "Открыть диалог"
                anchors.horizontalCenter: parent.horizontalCenter

                onClicked: {
                    var dialog = pageStack.push("Sailfish.Silica.TimePickerDialog",
                        {hour: 10, minute: 00, hourMode:DateTime.TwentyFourHours});
                    dialog.accepted.connect(function() {
                        lb.text = (dialog.timeText);
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
