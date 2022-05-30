import QtQuick 2.0
import Sailfish.Silica 1.0

Page {
    id: page
    allowedOrientations: Orientation.All
    SilicaFlickable {
        anchors.fill: parent
        contentHeight: column.height

        Column {
            id: column

            width: page.width
            spacing: Theme.paddingLarge
            PageHeader {
                title: qsTr("Задание 3")
            }

            Button {
                text: "Следующая страница"
                anchors.horizontalCenter: parent.horizontalCenter
                onClicked: pageStack.animatorPush(Qt.resolvedUrl("Page_4.qml"))
            }

            state: {
                if (ma.pressedButtons == 1) {
                    "way"
                } else {
                    "back"
                }
            }

            Label {
                id: lb
                text: "Hello Word"
                anchors.horizontalCenter: parent.horizontalCenter
                y: 250;
                color: "white"
                font.pixelSize: 60


                MouseArea {
                    id: ma
                    anchors.fill: parent
                }
            }

            states: [
                State {
                    name: "way"
                },
                State {
                    name: "back"
                }
            ]

            transitions: [
                Transition {
                    from: "back"
                    to: "way"
                    ParallelAnimation {
                        PropertyAnimation { target: lb; properties: "y"; from: lb.y; to: 1000; duration: 2000;}
                        PropertyAnimation { target: lb; properties: "color"; from: lb.color; to: "blue"; duration: 100;}
                        RotationAnimation { target: lb; from: 0; to: 180; duration: 1000;}
                    }
                },
                Transition {
                    from: "way"
                    to: "back"
                    PropertyAnimation { target: lb; properties: "y"; from: lb.y; to: 250; duration: 2000}
                    PropertyAnimation { target: lb; properties: "color"; from: lb.color; to: "white"; duration: 100;}
                    RotationAnimation { target: lb; from: lb.rotation; to: 0; duration: 1000;}

                }
            ]
        }
    }
}
