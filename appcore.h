#ifndef APPCORE_H
#define APPCORE_H

#include <QObject>
#include <QString>

class appCore : public QObject
{
    Q_OBJECT
    Q_PROPERTY(int innerNumber READ innerNumber WRITE setInnerNumber NOTIFY innerNumberChanged)

public:
    explicit appCore(QObject *parent = nullptr);
    int innerNumber();
    void setInnerNumber(const int &number);

signals:
    void innerNumberChanged();

public slots:
    void reset();

private:
    int m_innerNumber;
};

#endif // APPCORE_H
