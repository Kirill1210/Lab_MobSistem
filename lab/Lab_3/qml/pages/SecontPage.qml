import QtQuick 2.0
import Sailfish.Silica 1.0

Page{
    id:page

    //TheeffectivevaluewillberestrictedbyApplicationWindow.allowedOrientations
    allowedOrientations:Orientation.All

    //ToenablePullDownMenu,placeourcontentinaSilicaFlickable
    SilicaFlickable{
        anchors.fill:parent

        //PullDownMenuandPushUpMenumustbedeclaredinSilicaFlickable,SilicaListVieworSilicaGridView
        PullDownMenu{
            MenuItem{
                text:qsTr("Показать 3 страницу")
                onClicked:pageStack.animatorPush(Qt.resolvedUrl("ThirdPage.qml"))
            }
        }

        //PlaceourcontentinaColumn.ThePageHeaderisalwaysplacedatthetop
        //ofthepage,followedbyourcontent.
        PageHeader{
            title:qsTr("Страница 2")
        }

        Grid{

            y:200;
            width:parent.width;
            height:parent.height;
            spacing:50;
            rows:2;
            columns:3;

            Rectangle{
                id:r1;
                color:"red";
                width:parent.width/5;
                height:parent.width/5;
            }


            Rectangle{
                id:r2;
                color:"green";
                width:r1.width;
                height:r1.width;
            }

            Rectangle{
                id:r3;
                color:"blue";
                width:r1.width;
                height:r1.width;
            }

            Rectangle{
                id:r4;
                color:"purple";
                width:r1.width;
                height:r1.width;
            }

            Rectangle{
                id:r5;
                color:"transparent";
                width:r1.width;
                height:r1.width;
            }

            Rectangle{
                id:r6;
                color:"black";
                width:r1.width;
                height:r1.width;

            }
        }

        Item{

            Rectangle{
                 y:600;
                id:d1;
                color:"blue"
                width:200;
                height:200;
            }

            Rectangle{
                 y:400;
                id:d2;
                color:"red"
                width:200;
                height:200;
                transform:[Translate{x:800},Scale{xScale:0.7;yScale:1.7},Rotation{angle:40}]
            }
        }
    }
}
