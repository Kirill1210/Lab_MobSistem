import QtQuick 2.0
import Sailfish.Silica 1.0

Page {
    id: page
    allowedOrientations: Orientation.All

    SilicaFlickable {
        anchors.fill: parent
        PullDownMenu {
            MenuItem {
                text: qsTr("Show Page 3")
                onClicked: pageStack.animatorPush(Qt.resolvedUrl("Page_3.qml"))
            }
        }

        contentHeight: column.height
        Column {
            property int delayCnt: 0

            id: column
            width: page.width
            spacing: Theme.paddingLarge
            PageHeader {
                title: qsTr("Задание 2")
            }

            state: {
                    if (delayCnt < 20){
                        "red"
                    } else if (delayCnt < 50) {
                        "yellow"
                    } else {
                        "green"
                    }
            }

            Image {
                id: car
                x: 100
                y: 550
                source: "../pics/car.png"
            }

            Rectangle {
                id: rec_red
                anchors.horizontalCenter: parent.horizontalCenter;
                y: 200;
                width: 100; height: 100
                color: "red"
                radius: 100;
                opacity: 0.2
            }

            Rectangle {
                id: rec_yellow
                anchors.top: rec_red.bottom
                anchors.horizontalCenter: parent.horizontalCenter
                width: 100; height: 100
                color: "yellow"
                radius: 100;
                opacity: 0.2
            }

            Rectangle {
                id: rec_green
                anchors.top: rec_yellow.bottom
                anchors.horizontalCenter: parent.horizontalCenter
                width: 100; height: 100
                color: "green"
                radius: 100;
                opacity: 0.2
            }



            states: [
                State {
                    name: "red"
                    PropertyChanges { target: rec_red; opacity: 1}
                    StateChangeScript {
                            script: anim_car_back.running = true;
                        }
                },
                State {
                    name: "yellow"
                    PropertyChanges { target: rec_yellow; opacity: 1}
                },
                State {
                    name: "green"
                    PropertyChanges { target: rec_green; opacity: 1}
                    StateChangeScript {
                            script: anim_car_forward.running = true;
                        }


                }
            ]
        }

        PropertyAnimation {
            id: anim_car_forward
            target: car;
            property: "x";
            from: 100;
            to: 500;
            duration: 1000;
        }

        PropertyAnimation {
            id: anim_car_back
            target: car;
            property: "x";
            from: 500;
            to: 100;
            duration: 1000;
        }

        Timer {
            interval: 50
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
