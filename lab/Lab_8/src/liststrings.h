#ifndef LISTSTRINGS_H
#define LISTSTRINGS_H

#include <QObject>
#include <QString>

class ListStrings : public QObject
{
    Q_OBJECT
public:
    explicit ListStrings(QObject *parent = nullptr);
    Q_INVOKABLE void addInList(QString temp) { m_data << temp; };
    Q_INVOKABLE void removeBackElem()
    {
        if (!m_data.isEmpty()) {
            m_data.pop_back();
        }
    };

    Q_INVOKABLE QString getAllList()
    {
        QString temp;
        for (int i = 0; i < m_data.length(); i++)
        {
            if (i == 0) {
                QString t = m_data[i];
                t[0] = t[0].toUpper();
                temp += t;
            } else {
                temp += m_data[i].toLower();
            }

            if (i != m_data.length()-1){
                temp += ", ";
            }
        }

        return temp;
    };
private:
    QList<QString> m_data;
};

#endif // LISTSTRINGS_H
