import QtQuick 2.0
import Sailfish.Silica 1.0
import QtQuick.XmlListModel 2

Page {
    XmlListModel {
        id: xmlListModel
        source: "https://www.cbr-xml-daily.ru/daily_utf8.xml"
        query: "/ValCurs/Valute"
        XmlRole { name: "Name"; query: "Name/string()"; }
        XmlRole { name: "Value"; query: "Value/string()"; }
    }

    SilicaListView {
        PullDownMenu {
            MenuItem {
                text: qsTr("Show Page 5")
                onClicked: pageStack.animatorPush(Qt.resolvedUrl("Page_5.qml"))
            }
        }

        anchors.fill: parent
        header: PageHeader { title: "Задание 4" }
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
}
