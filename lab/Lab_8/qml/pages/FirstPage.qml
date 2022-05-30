import QtQuick 2.0
import Sailfish.Silica 1.0
import com.counting 1.0

Page {
    id: page
    allowedOrientations: Orientation.All

    SilicaFlickable {
        anchors.fill: parent

        PullDownMenu {
            MenuItem {
                text: qsTr("Показать 2 задание")
                onClicked: pageStack.animatorPush(Qt.resolvedUrl("SecondPage.qml"))
            }
        }

        contentHeight: column.height

        Counting {
            id: cntg
            count: 10;
        }

        Column {
            id: column

            width: page.width
            spacing: Theme.paddingLarge
            PageHeader {
                title: qsTr("Задание 1")
            }

            Label {
                id: label;
                x: Theme.horizontalPageMargin
                text: cntg.getCount();
                color: Theme.secondaryHighlightColor
                font.pixelSize: Theme.fontSizeExtraLarge
            }

            Button {
                anchors.verticalCenter: verticalCenter
                text: "Увеличить"
                onClicked: {

                    cntg.increaseCount();
                    label.text = cntg.getCount();
                }
            }

            Button {
                text: "Сбросить"
                onClicked: {
                    cntg.zeroingCount();
                    label.text = cntg.getCount();
                }
            }
        }
    }
}
