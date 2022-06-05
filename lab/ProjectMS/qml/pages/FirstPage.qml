import QtQuick 2.0
import Sailfish.Silica 1.0

Dialog {

    property string res1
    property string res2
    property string res3
    property string res4
    property string res5
    property string res6
    property string res7
    property string l1
    property string l2
    property string l3
    property string l4
    property string l5
    property string l6
    property string l7
    DialogHeader {
        acceptText: "Перевести"
        cancelText: "Отменить"

    }

    Row {
        y:100;
        spacing: 1;

        TextField {
            id: k1
            width: 200;
            text: ""
        }
        Label
       {
                      text: "№1     Километры в метры"

       }

    }


    Row {
        y:200;
        spacing: 1;

        TextField {
            id: k2
            width: 200;
            text: ""
        }
        Label
       {
                      text: "№2     Часы в секунды"

       }

    }


    Row {
        y:300;
        spacing: 1;

        TextField {
            id: k3
            width: 200;
            text: ""
        }
        Label
       {
                 text: "№3     Гигабайты в мегабайты"

       }

    }


    Row {
        y:400;
        spacing: 1;

        TextField {
            id: k4
            width: 200;
            text: ""
        }
        Label

       {
                  text: "№4     Долар в рублях"

       }

    }


    Row {
        y:500;
        spacing: 1;

        TextField {
            id: k5
            width: 200;
            text: ""
        }
        Label
       {
                  text: "№5     Литры  в миллилитры"

       }

    }



    Row {
        y:600;
        spacing: 1;

        TextField {
            id: k6
            width: 200;
            text: ""
        }
        Label
       {
                 text: "№6     Тонну  в килограммах"

       }

    }

    Row {
        y:700;
        spacing: 1;

        TextField {
            id: k7
            width: 200;
            text: ""
        }
        Label
       {
           text: "№7     Килогерцы в герцы"

       }

    }



    onDone: {
        if (result == DialogResult.Accepted) {
            res1 = k1.text*1000;
            l1=k1.text
            }
        if (result == DialogResult.Accepted) {
            res2 = k2.text*3600;
            l2=k2.text
            }
        if (result == DialogResult.Accepted) {
            res3 = k3.text*1024;
            l3=k3.text
            }
        if (result == DialogResult.Accepted) {
            res4 = k4.text*65;
            l4=k4.text
            }
        if (result == DialogResult.Accepted) {
            res5 = k5.text*1000;
            l5=k5.text
            }
        if (result == DialogResult.Accepted) {
            res6 = k6.text*1000;
            l6=k6.text
            }
        if (result == DialogResult.Accepted) {
            res7 = k7.text*1000;
            l7=k7.text
            }


    }


    }


