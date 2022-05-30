import QtQuick 2.0
import Sailfish.Silica 1.0
import QtQuick.LocalStorage 2.0
//import "../service"

Page {
    height: parent.height;
    width: parent.width;

    Column{
        height: parent.height;
        width: parent.width;

        Button {
            id: addButton1
            anchors.horizontalCenter: parent.horizontalCenter
            text: "Следующая страница"
            onClicked: pageStack.animatorPush(Qt.resolvedUrl("Page_7.qml"))
        }

        TextField {
            id: tf;
            placeholderText: "Текст заметки"
        }

        Button {
            anchors.horizontalCenter: parent.horizontalCenter
            text: "Добавить"
            onClicked: {
                dao.insertNote(tf.text);
                selectBooks();
            }
        }

        SilicaListView {
            height: parent.height;
            width: parent.width;
            anchors.horizontalCenter: parent.horizontalCenter
            model: ListModel { id: booksListModel }
            delegate: ListItem {
                Button {
                    anchors.horizontalCenter: parent.horizontalCenter
                    text: note_text
                    onClicked: {
                        dao.deleteNote(text);
                        selectBooks();

                    }
                }
            }
        }
    }

   function selectBooks() {
       booksListModel.clear();
       dao.retrieveNotes(function(notes) {
           for (var i = 0; i < notes.length; i++) {
               var note = notes.item(i);
               console.log(note.id + "  " + note.text_note);
               booksListModel.append({id: note.id, note_text: note.text_note });
           }
       });
   }

   Component.onCompleted: selectBooks();
}
