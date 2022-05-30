import QtQuick 2.0
import Sailfish.Silica 1.0
import "pages"

ApplicationWindow {
    property int current: 0;

    Connections {
        target: pageStack
        onDepthChanged: {
            current = pageStack.depth + 1;
            console.log("depth: " + current);
        }
    }

    initialPage: Component { Page_7 { } }
    cover: Qt.resolvedUrl("cover/CoverPage.qml")
    allowedOrientations: defaultAllowedOrientations
}
