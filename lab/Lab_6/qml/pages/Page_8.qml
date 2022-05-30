import QtQuick 2.0
import Sailfish.Silica 1.0
import Nemo.Configuration 1.0

Page {
    ConfigurationGroup {
        id: settings
        path: "/apps/app_name/settings"
        property var tf: "empty"
        property bool sw: false

    }

    SilicaListView {
        height: parent.height;
        width: parent.width;

        PullDownMenu {
            MenuItem {
                text: qsTr("Show Page 1")
                onClicked: pageStack.animatorPush(Qt.resolvedUrl("Page_1.qml"))
            }
        }

        Column {
            y: 200;
            height: parent.height;
            width: parent.width;

            Label {
                anchors.horizontalCenter: parent.horizontalCenter
                text: settings.tf + " - text in textfield" + "\n" + settings.sw + " - status Switch"
            }


            TextField {
                id: tf1
                anchors.horizontalCenter: parent.horizontalCenter
                placeholderText: "Текст"
            }

            TextSwitch {
                id: sw1
                width: 100;
                text: "Text"

            }

            Button {
                anchors.horizontalCenter: parent.horizontalCenter
                text: "Save"
                onClicked: {
                    settings.tf = tf1.text;
                    settings.sw = sw1.checked;
                }
            }
        }
    }
}
