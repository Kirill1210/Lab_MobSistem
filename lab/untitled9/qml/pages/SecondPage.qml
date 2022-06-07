import QtQuick 2.0
import Sailfish.Silica 1.0

Page {
    id: page

    ComboBox {
            textRole: "text"
            valueRole: "value"
            // Когда элемент выбран, обновляем бэкэнд.
            onActivated: backend.modifier = currentValue
            // Устанавливаем начальный currentIndex равным значению, хранящемуся в бэкэнде.
            Component.onCompleted: currentIndex = indexOfValue(backend.modifier)
            model: [
                { value: Qt.NoModifier, text: qsTr("No modifier") },
                { value: Qt.ShiftModifier, text: qsTr("Shift") },
                { value: Qt.ControlModifier, text: qsTr("Control") }
            ]
        }
}
