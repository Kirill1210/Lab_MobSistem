import QtQuick 2.0
import Sailfish.Silica 1.0

Page {
    SilicaWebView {

        PullDownMenu {
            MenuItem {
                text: qsTr("К заданию 8")
                onClicked: pageStack.animatorPush(Qt.resolvedUrl("TaskListShowView.qml"))
            }
        }

        id: webView
        anchors {
            top: parent.top; bottom: urlField.top;
            left: parent.left; right: parent.right;
        }
        url: "https://gbuzno51.ru/prijom-grazhdan/zapis-k-vrachu"

    }
    TextField {
        id: urlField
        anchors {
            left: parent.left; right: parent.right;
            bottom: parent.bottom
        }
        text: "https://gbuzno51.ru/prijom-grazhdan/zapis-k-vrachu"
        label: webView.title
        EnterKey.onClicked: {

            webView.url = text;
            str =  text;
        }
    }
}
