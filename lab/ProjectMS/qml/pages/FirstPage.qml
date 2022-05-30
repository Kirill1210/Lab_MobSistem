import QtQuick 2.0
import Sailfish.Silica 1.0

Dialog {

    property string res1
    property string res11
    property string res2
    property string res22
    property string res3
    property string res33
    property string res4
    property string res44
    property string res5
    property string res55
    property string res6
    property string res66

    DialogHeader {
        acceptText: "Подтвердить"
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
            id: k11
            width: 200;
            text: ""
        }
        Label
       {
           text: "№2     Метры в километры"

       }



    }

    Row {
        y:300;
        spacing: 1;

        TextField {
            id: k2
            width: 200;
            text: ""
        }
        Label
       {
           text: "№3     Часы в секунды"

       }

    }
    Row {
        y:400;
        spacing: 1;

        TextField {
            id: k22
            width: 200;
            text: ""
        }
        Label
       {
           text: "№4     Секунды в часы"

       }

    }

    Row {
        y:500;
        spacing: 1;

        TextField {
            id: k3
            width: 200;
            text: ""
        }
        Label
       {
           text: "№5     Гигабайты в мегабайты"

       }

    }
    Row {
        y:600;
        spacing: 1;

        TextField {
            id: k33
            width: 200;
            text: ""
        }
        Label
       {
           text: "№6     Мегабайты в гигабайты"

       }

    }

    Row {
        y:700;
        spacing: 1;

        TextField {
            id: k4
            width: 200;
            text: ""
        }
        Label
       {
           text: "№7     Долар в рублях"

       }

    }
    Row {
        y:800;
        spacing: 1;

        TextField {
            id: k44
            width: 200;
            text: ""
        }
        Label
       {
           text: "№8     Рубль в долларах"

       }

    }

    Row {
        y:900;
        spacing: 1;

        TextField {
            id: k5
            width: 200;
            text: ""
        }
        Label
       {
           text: "№9     Литры  в миллилитры"

       }

    }

    Row {
        y:1000;
        spacing: 1;

        TextField {
            id: k55
            width: 200;
            text: ""
        }
        Label
       {
           text: "№10     Миллилитры в литры"

       }

    }

    Row {
        y:1100;
        spacing: 1;

        TextField {
            id: k6
            width: 200;
            text: ""
        }
        Label
       {
           text: "№11     Тонну  в килограммах"

       }

    }
    Row {
        y:1200;
        spacing: 1;

        TextField {
            id: k66
            width: 200;
            text: ""
        }
        Label
       {
           text: "№12     Килограммы в тонну"

       }

    }


    onDone: {
        if (result == DialogResult.Accepted) {
            res1 = k1.text*1000;
            }
        if (result == DialogResult.Accepted) {
            res11 = k11.text/1000;
            }
        if (result == DialogResult.Accepted) {
            res2 = k2.text*3600;
            }
        if (result == DialogResult.Accepted) {
            res22 = k22.text/3600;
            }
        if (result == DialogResult.Accepted) {
            res3 = k3.text*1024;
            }
        if (result == DialogResult.Accepted) {
            res33 = k33.text/1024;
            }
        if (result == DialogResult.Accepted) {
            res4 = k4.text*65;
            }
        if (result == DialogResult.Accepted) {
            res44 = k44.text/65;
            }
        if (result == DialogResult.Accepted) {
            res5 = k5.text*1000;
            }
        if (result == DialogResult.Accepted) {
            res55 = k55.text/1000;
            }
        if (result == DialogResult.Accepted) {
            res6 = k6.text*1000;
            }
        if (result == DialogResult.Accepted) {
            res66 = k66.text/1000;
            }

    }


    }


