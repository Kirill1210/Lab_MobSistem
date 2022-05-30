import QtQuick 2.0
import Sailfish.Silica 1.0
import com.counting 1.0
import com.liststrings 1.0
import "pages"

ApplicationWindow {
    initialPage: Component { FirstPage { } }
    cover: Qt.resolvedUrl("cover/CoverPage.qml")
    allowedOrientations: defaultAllowedOrientations
}
