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
            text:qsTr("Показать 4 страницу")
            onClicked:pageStack.animatorPush(Qt.resolvedUrl("FourthPage.qml"))
        }
    }

    //TellSilicaFlickabletheheightofitscontent.
    contentHeight:column.height

    //PlaceourcontentinaColumn.ThePageHeaderisalwaysplacedatthetop
    //ofthepage,followedbyourcontent.
    PageHeader{
        title:qsTr("Страница 3")
    }

    Item {
        id: it

        Rectangle{
            id:blueRect;
            color:"blue";
            x:50;
            y:100;
            width:300;
            height:300;

            ParallelAnimation{
                id:animation
                loops: Animation.Infinite;

                PathAnimation{
                    path:Path{
                        PathCurve {x:200; y:750}
                        PathCurve {x:200; y:100}
                    }

                    duration:4000;
                    target:blueRect;
                }


                PropertyAnimation{
                    target:blueRect
                    property:"width"
                    from:300;
                    to:500;
                    duration:2000;
                }



                PropertyAnimation{
                    target:blueRect
                    property:"height"
                    from:300;
                    to:500;
                    duration:2000

                }


running:animation;



            }

          /*  ParallelAnimation{
                id:animation1
                loops: Animation.Infinite;

                PropertyAnimation{
                    target:blueRect
                    property:"width"
                    from:500;
                    to:300;
                    duration:2000;
                }

                PropertyAnimation{
                    target:blueRect
                    property:"height"
                    from:500;
                    to:300;
                    duration:2000
                }

                PropertyAnimation{
                    target:label
                    property:"font.pixelSize"
                    from:Theme.fontSizeExtraLarge * 2;
                    to:Theme.fontSizeExtraLarge;
                    duration:2000;
                }

                running:animation;
            }*/







    }
    }
}
}
