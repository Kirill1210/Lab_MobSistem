#include <sailfishapp.h>
#include <QtQuick>
#include <QScopedPointer>
#include "task1.h"
#include "liststrings.h"

int main(int argc, char *argv[])
{
    QScopedPointer<QGuiApplication> app(SailfishApp::application(argc, argv));
    QScopedPointer<QQuickView> v(SailfishApp::createView());

    qmlRegisterType<Counting>("com.counting", 1, 0, "Counting");
    qmlRegisterType<ListStrings>("com.liststrings", 1, 0, "ListStrings");

    v->setSource(SailfishApp::pathTo("qml/Lab_8.qml"));
    v->show();

    return app->exec();
}

