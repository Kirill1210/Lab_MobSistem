#ifndef TASK1_H
#define TASK1_H

#include <QObject>
#include <QString>

class Counting : public QObject
{
    Q_OBJECT
    Q_PROPERTY(int count READ count WRITE setCount NOTIFY countChanged)
public:
    explicit Counting(QObject *parent = nullptr);
    Q_INVOKABLE int getCount() { return m_count; };
    Q_INVOKABLE void increaseCount() { m_count++; };
    Q_INVOKABLE void zeroingCount() { m_count = 0; };

    int count() {return m_count; };
    void setCount(const int temp) { m_count = temp; emit countChanged(); };

signals:
    void countChanged();


private:
    int m_count = 0;
};

#endif // TASK1_H
