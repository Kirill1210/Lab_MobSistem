import QtQuick 2.0
import Sailfish.Silica 1.0

Dialog {
    property string res
    DialogHeader {
        acceptText: "Подтвердить"
        cancelText: "Отменить"
    }

    Row {
        y:200;
        spacing: 200;

        TextField {
            id: leftTF
            width: 600;
            text: "Введите текст"
        }
    }

    onDone: {
        if (result == DialogResult.Accepted) {
            res = leftTF.text;
        }
    }
}
