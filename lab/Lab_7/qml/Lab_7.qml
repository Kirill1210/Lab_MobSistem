import QtQuick 2.0
import Sailfish.Silica 1.0
import "pages"

ApplicationWindow {
    id:main                                                 /////////////////////////
    property int current: 0;

    property QtObject obj_cw;                               /////////////////////////

    Connections {
        target: pageStack
        onDepthChanged: {
            current = pageStack.depth + 1;
            console.log("depth: " + current);
        }
    }

    initialPage: Component { Page_1 { } }
    cover: Qt.resolvedUrl("cover/CoverPage.qml")
    allowedOrientations: defaultAllowedOrientations

    function setCWObj(temp){                                                                        /////////////////////////
        console.log("Объект таймера получен")                                                       /////////////////////////
        obj_cw = temp;                                                                              /////////////////////////
    }

    function statrTimerCustomButton(){                                                              /////////////////////////
        console.log("Запуск таймера от сигнала кастом кнопки")                                      /////////////////////////
        obj_cw.start_timer();                                                                       /////////////////////////
    }
}
