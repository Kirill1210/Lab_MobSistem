import QtQuick 2.0
import Sailfish.Silica 1.0
import "pages"

ApplicationWindow {
    property string str: "value";

    initialPage: Component { CreatePages { } }
    cover: Qt.resolvedUrl("cover/CoverPage.qml")
    allowedOrientations: defaultAllowedOrientations
}
