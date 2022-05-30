import QtQuick 2.0
import Sailfish.Silica 1.0

Dialog{
    property string res
    DialogHeader {}

    Row{
        y:200;
        spacing:200;

        TextField{
            id:leftTF
            width:300
            text:"0"
        }

        TextField{
            id:rightTF
            width:300
            text:"0"
        }

    }

    onRejected:{leftTF.text("0")
        rightTF.text("0")}
    onAccepted:{res=parseInt(leftTF.text)+parseInt(rightTF.text);
            console.log("Result: " + (parseInt(leftTF.text )+ parseInt(rightTF.text)));
    }
}
