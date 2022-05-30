import QtQuick 2.0
import Sailfish.Silica 1.0
import QtQuick.XmlListModel 2

Page {

    function loadNews() {
        var xhr = new XMLHttpRequest();
        xhr.open('GET', 'https://www.cbr-xml-daily.ru/daily_utf8.xml', true);
        xhr.onreadystatechange = function() {
            if (xhr.readyState === XMLHttpRequest.DONE) {
                xmlListModel.xml = xhr.responseText;
            }
        }
        xhr.send();
    }

    XmlListModel {
        id: xmlListModel
        query: "/ValCurs/Valute"
        XmlRole { name: "Name"; query: "Name/string()"; }
        XmlRole { name: "Value"; query: "Value/string()"; }
    }

    SilicaListView {
        PullDownMenu {
            MenuItem {
                text: qsTr("Show Page 6")
                onClicked: pageStack.animatorPush(Qt.resolvedUrl("Page_6.qml"))
            }
        }

        anchors.fill: parent
        header: PageHeader { title: "Задание 5" }
        model: xmlListModel
        spacing: 10;
        delegate: Column {
            x: 10; width: parent.width - 2 * x
            Label {
                width: parent.width
                wrapMode: Text.WordWrap

                text: Name + '\n' + Value
            }
        }
    }
    Component.onCompleted: loadNews()
}
