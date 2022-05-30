import QtQuick 2.0
import Sailfish.Silica 1.0

Item {
    property string setHour: "00"
    property string  setMin: "00"
    property string  setSec: "00"

    property int hour: 0;
    property int min: 0;
    property int sec: 0;

    height: lb.height;
    width: lb.width;
    anchors.horizontalCenter: parent.horizontalCenter;

    Label {
        id: lb
        text: setHour + ":" + setMin + ":" + setSec
        font.pixelSize: 60
    }

    Rectangle {
        id: rt
        width: 300;
        height: 80;
        anchors.top: lb.bottom
        anchors.horizontalCenter: parent.horizontalCenter;
        color: "Green"
        Button {
            id: bt;
            text: "Start"
            width: parent.width;
            height: parent. height;

            MouseArea {
                    id: mouseArea
                    anchors.fill: parent
                }

        }
    }
    Component.onCompleted: mouseArea.clicked.connect(mouseAreaClickedHandler)

    function mouseAreaClickedHandler(mouse) {
        console.log("ClickedHandler")
        if (bt.text === "Start")
        {
            bt.text = "Stop";
            rt.color = "red"
            tm.start();
        }
        else
        {
            bt.text = "Start";
            rt.color = "Green"
            setHour = "00";
            setMin = "00";
            setSec = "00";
            tm.stop();
        }
    }

    Timer {
        id: tm;
        interval: 1000;
        repeat: true
        running: false
        onTriggered: {
            if (sec != "59")
            {
                sec++;
                if (sec < 10) {
                    setSec = "0" + sec;
                }
                else {
                    setSec = sec;
                }
            }
            else {
                sec = 0;
                setSec = "00";
                min++;

                if (min != "59")
                {
                    if (min < 10) {
                        setMin = "0" + min;
                    }
                    else {
                        setMin = min;
                    }
                }
                else{
                    min = 0;
                    setMin = min;

                    hour++;

                    if (hour != "23")
                    {
                        if (hout < 10) {
                            setHour = "0" + hour;
                        }
                        else {
                            setHour = hour;
                        }
                    }
                    else {
                        hour = 0 ;
                        setHour = "00";
                        min = 0;
                        setMin = "00";
                        sec = 0;
                        setSet = "00";

                        tm.stop();
                    }
                }
            }
        }
    }
}
