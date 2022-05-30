import QtQuick 2.0
import QtQuick.LocalStorage 2.0

Item {
    property var db;

    Component.onCompleted: {
        db = LocalStorage.openDatabaseSync("notes", "1.0");
        createNotesTable();
    }

    function createNotesTable() {
        db.transaction(function(tx) {
        tx.executeSql("CREATE TABLE IF NOT EXISTS notes (
                        id INTEGER PRIMARY KEY AUTOINCREMENT,"
                        + "text_note TEXT NOT NULL);");
        });
    }

    function retrieveNotes(callback) {
        db.readTransaction(function(tx) {
            var result = tx.executeSql("SELECT * FROM notes;");
            callback(result.rows);
        });
    }

    function insertNote(text_note) {
        db.transaction(function(tx) {
            tx.executeSql("INSERT INTO notes (text_note) VALUES(?);", [text_note]);
        });
    }

    function deleteNote(text) {
        console.log("deleted");
        db.transaction(function(tx) {
            tx.executeSql("DELETE FROM notes WHERE text_note = (?);", [text]);
        });
    }
}
