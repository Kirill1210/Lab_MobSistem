# NOTICE:
#
# Application name defined in TARGET has a corresponding QML filename.
# If name defined in TARGET is changed, the following needs to be done
# to match new name:
#   - corresponding QML filename must be changed
#   - desktop icon filename must be changed
#   - desktop filename must be changed
#   - icon definition filename in desktop file must be changed
#   - translation filenames have to be changed

# The name of your application
TARGET = Lab_5

CONFIG += sailfishapp

SOURCES += src/Lab_5.cpp

DISTFILES += qml/Lab_5.qml \
    qml/cover/CoverPage.qml \
    qml/pages/Browser.qml \
    qml/pages/CreatePages.qml \
    qml/pages/DialogText.qml \
    qml/pages/IsCreatingPage.qml \
    qml/pages/ListAndContextMenu.qml \
    qml/pages/PageDialogCalendar.qml \
    qml/pages/PageDialogText.qml \
    qml/pages/PageDialogWatch.qml \
    qml/pages/PullDownAndPushUpMenu \
    qml/pages/PullDownAndPushUpMenu.qml \
    qml/pages/PushAttachedPage.qml \
    qml/pages/PushAttachedPage_2.qml \
    qml/pages/TaskList.qml \
    qml/pages/TaskListShowView.qml \
    rpm/Lab_5.changes.in \
    rpm/Lab_5.changes.run.in \
    rpm/Lab_5.spec \
    rpm/Lab_5.yaml \
    translations/*.ts \
    Lab_5.desktop

SAILFISHAPP_ICONS = 86x86 108x108 128x128 172x172

# to disable building translations every time, comment out the
# following CONFIG line
CONFIG += sailfishapp_i18n

# German translation is enabled as an example. If you aren't
# planning to localize your app, remember to comment out the
# following TRANSLATIONS line. And also do not forget to
# modify the localized app name in the the .desktop file.
TRANSLATIONS += translations/Lab_5-de.ts
