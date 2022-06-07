import QtQuick 2.0
import Sailfish.Silica 1.0

Page {
    id: page


///////////////ВРЕМЯ
        ComboBox {
            x:50
            description: "Время"

            menu: ContextMenu {
            MenuItem { text: "Часы в минуты" }
            MenuItem { text: "Минуты в секунды" }
            MenuItem { text: "Часы в секунды" }
            }
            onCurrentIndexChanged: {console.log(currentIndex)
                          if (currentIndex === 0)
                          {l1.text=t1.text*60}
                          if (currentIndex === 1)
                          {l1.text=t1.text*60}
                          if (currentIndex === 2)
                          {l1.text=t1.text*3600}
          }
        }
        TextField
        {
           y:10
          id: t1
           width: 100;
           text: ""
        }

        Label
        {
           x:550
           y:25
           id:l1
           text:"..."
        }


///////////////////МАССА
            ComboBox {
            y:100
            x:50
            description: "Масса"

            menu: ContextMenu {
            MenuItem { text: "Тонны в килограммы" }
            MenuItem { text: "Килограммы в граммы" }
            MenuItem { text: "Тонны в граммы" }
            }
            onCurrentIndexChanged: {console.log(currentIndex)
                          if (currentIndex === 0)
                          {l2.text=t2.text*1000}
                          if (currentIndex === 1)
                          {l2.text=t2.text*1000}
                          if (currentIndex === 2)
                          {l2.text=t2.text*1000000}
          }
        }
        TextField
        {
          y:110
          id: t2
           width: 100;
           text: ""
        }

        Label
        {
           y:125
           x:550
           id:l2
           text:"..."
        }



////////////////////////ДЛИНА
                    ComboBox {
                    y:200
                    x:50
                    description: "Длина"

                    menu: ContextMenu {
                    MenuItem { text: "Километры в метры" }
                    MenuItem { text: "Метры в сантиметры" }
                    MenuItem { text: "Сантиметры в миллиметры" }
                    MenuItem { text: "Километры в сантиметры" }
                    }
                    onCurrentIndexChanged: {console.log(currentIndex)
                                  if (currentIndex === 0)
                                  {l3.text=t3.text*1000}
                                  if (currentIndex === 1)
                                  {l3.text=t3.text*100}
                                  if (currentIndex === 2)
                                  {l3.text=t3.text*10}
                                  if (currentIndex === 3)
                                  {l3.text=t3.text*100000}
                  }
                }
                TextField
                {
                  y:210
                  id: t3
                   width: 100;
                   text: ""
                }

                Label
                {
                   y:225
                   x:550
                   id:l3
                   text:"..."
                }
/////////////////////////////МАССА
                            ComboBox {
                            y:300
                            x:50
                            description: "Скорость передачи данных"

                            menu: ContextMenu {
                            MenuItem { text: "Мегабайт в килобайт" }
                            MenuItem { text: "Мегабит в килобит" }
                            MenuItem { text: "Гигабайт в Мегабайт" }
                            }
                            onCurrentIndexChanged: {console.log(currentIndex)
                                          if (currentIndex === 0)
                                          {l4.text=t4.text*1024}
                                          if (currentIndex === 1)
                                          {l4.text=t4.text*1024}
                                          if (currentIndex === 2)
                                          {l4.text=t4.text*1024}
                          }
                        }
                        TextField
                        {
                          y:310
                          id: t4
                           width: 100;
                           text: ""
                        }

                        Label
                        {
                           y:325
                           x:550
                           id:l4
                           text:"..."
                        }

///////////////////////////ВРЕМЯ
                                ComboBox {
                                    y:400
                                    x:50
                                    description: "Валюта"

                                    menu: ContextMenu {
                                    MenuItem { text: "Доллар в рубль" }
                                    MenuItem { text: "Евро в рубль" }
                                                                       }
                                    onCurrentIndexChanged: {console.log(currentIndex)
                                                  if (currentIndex === 0)
                                                  {l5.text=t5.text*61}
                                                  if (currentIndex === 1)
                                                  {l5.text=t5.text*65}

                                  }
                                }
                                TextField
                                {
                                   y:410
                                  id: t5
                                   width: 100;
                                   text: ""
                                }

                                Label
                                {
                                   x:550
                                   y:425
                                   id:l5
                                   text:"..."
                                }








}




