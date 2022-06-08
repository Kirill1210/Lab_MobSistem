import QtQuick 2.0
import Sailfish.Silica 1.0

Page {
    id: page
    allowedOrientations: Orientation.All
    SilicaFlickable {
        anchors.fill: parent
        PullDownMenu {
            MenuItem {
                text: qsTr("Show Page 6")                                                           /////////////////////////
                onClicked: pageStack.animatorPush(Qt.resolvedUrl("Page_6.qml"))                     /////////////////////////
            }
        }

        contentHeight: column.height
        Column {
            property int delayCnt: 0

            id: column
            width: page.width
            spacing: Theme.paddingLarge
            PageHeader {
                title: qsTr("Задание 4")
            }

            state: {
                    if (delayCnt < 10){
                        "red"
                    } else if (delayCnt < 20) {
                        "yellow"
                    } else {
                        "green"
                    }
            }

            LightSignal {
                id: ls_red
                y: 200;
                setColor: "red"
            }

            LightSignal {
                id: ls_yellow
                anchors.top: ls_red.bottom
                setColor: "yellow"
            }

            LightSignal {
                id: ls_green
                anchors.top: ls_yellow.bottom
                setColor: "green"
            }

            states: [
                State {
                    name: "red"
                    PropertyChanges { target: ls_red; setOpacity: "1"}
                },
                State {
                    name: "yellow"
                    PropertyChanges { target: ls_yellow; setOpacity: "1"}
                },
                State {
                    name: "green"
                    PropertyChanges { target: ls_green; setOpacity: "1"}
                }
            ]
        }

        Timer {
            interval: 100
            repeat: true
            running: true
            onTriggered: {
                if (column.delayCnt == 100) {
                    column.delayCnt = 0;
                } else {
                    column.delayCnt++;
                }
            }
        }
    }
}
