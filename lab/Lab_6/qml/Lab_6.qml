import QtQuick 2.0
import Sailfish.Silica 1.0
import "pages"
import "service"

ApplicationWindow {
    id: aw
    Dao { id: dao }
    initialPage: Component { Page_1 { } }
    cover: Qt.resolvedUrl("cover/CoverPage.qml")
    //allowedOrientations: defaultAllowedOrientations
    allowedOrientations: Orientation.Portrait
    _defaultPageOrientations: Orientation.All
}
