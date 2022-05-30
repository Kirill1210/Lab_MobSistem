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
            text:qsTr("Показать 2 страницу")
            onClicked:pageStack.animatorPush(Qt.resolvedUrl("SecontPage.qml"))
        }
    }

    //TellSilicaFlickabletheheightofitscontent.
    contentHeight:column.height

    //PlaceourcontentinaColumn.ThePageHeaderisalwaysplacedatthetop
    //ofthepage,followedbyourcontent.

    Column {
        id:column
        width:page.width
        spacing:Theme.paddingLarge
        PageHeader{
            title:qsTr("Страница 1")
        }

        Item{
            id:it
            width:parent.width + 135
            height:parent.height/4

            Rectangle{
                id:r1
                color:"red"
                width:parent.width/5
                height:parent.width/5
            }

            Rectangle{
                id:r2
                color:"green"
                width:r1.width
                height:r1.height
                anchors.left:r1.right
                anchors.top:r1.verticalCenter
            }
            Rectangle{
                id:r3
                color:"blue"
                width:r1.width
                height:r1.height
                anchors.left:r2.horizontalCenter
                anchors.top:r1.top

            Label{
                text:"Квадрат"
                anchors.centerIn:r3
                color:"white"
                font.pixelSize:Theme.fontSizeExtraSmall

                }
            }
        }

        Grid{
            width:parent.width
            spacing:50
            rows:2
            columns:3

            Rectangle{
                id:rr1;
                color:"red"
                width:parent.width/5 + 25
                height:parent.width/5 + 25
            }


            Rectangle{
            id:rr2
            color:"green"
            width:rr1.width
            height:rr1.width
            }

            Rectangle{
            id:rr3
            color:"blue"
            width:rr1.width
            height:rr1.width
            }

            Rectangle{
            id:rr4;
            color:"purple";
            width:rr1.width;
            height:rr1.width;
            }

            Rectangle{
            id:rr5
            color:"transparent"
            width:rr1.width
            height:rr1.width
            }

            Rectangle{
            id:rr6
            color:"black"
            width:rr1.width
            height:rr1.width
            }
        }

        Row{
               id:row1
               spacing:50

               Rectangle{
                   id:rc1
                   color:"red"
                   width:column.width/5 + 25
                   height:column.width/5 + 25
               }

               Rectangle{
                   id:rc2
                   color:"green"
                   width:rc1.width
                   height:rc1.height
               }

               Rectangle{
                   id:rc3
                   color:"blue"
                   width:rc1.width
                   height:rc1.height
               }
           }


           Row{
           spacing:parent.width/5+row1.spacing*2 + 25

           Rectangle{
               id:rc4
               color:"purple"
               width:column.width/5 + 25
               height:column.width/5 + 25
           }

           Rectangle{
               id:rc5
               color:"black"
               width:rc4.width
               height:rc4.height
           }
           }




    }
    }
}
