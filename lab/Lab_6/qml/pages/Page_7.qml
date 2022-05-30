import QtQuick 2.0
import Sailfish.Silica 1.0
import Nemo.Configuration 1.0

Page {
    ConfigurationValue {
        id: setting_1
        key: "/apps/app_name/setting_1"
        defaultValue: "Menu Default"
    }

    ConfigurationValue {
        id: setting_2
        key: "/apps/app_name/setting_2"
        defaultValue: "Menu Default"
    }

    SilicaListView {
        height: parent.height;
        width: parent.width;

        PullDownMenu {
            MenuItem {
                text: qsTr("Show Page 8")
                onClicked: pageStack.animatorPush(Qt.resolvedUrl("Page_8.qml"))
            }
        }

        Column {
            y: 200;
            height: parent.height;
            width: parent.width;

            Label {
                anchors.horizontalCenter: parent.horizontalCenter
                text: setting_1.value + " - text in textfield" + "\n" + setting_2.value + " - status Switch"
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
                    setting_1.value = tf1.text;
                    setting_2.value = sw1.checked;
                }
            }
        }
    }
}
