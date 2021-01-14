#ifndef BACKEND_H
#define BACKEND_H

#include <QObject>
#include <QString>
#include "qqml.h"

class Backend : public QObject
{
    Q_OBJECT
    Q_PROPERTY(QString buttonText READ buttonText WRITE setButtonText NOTIFY buttonTextChanged)


public:
    explicit Backend(QObject *parent = nullptr);
    QString buttonText();
    void setButtonText(const QString &buttonText);

signals:
    void buttonTextChanged();

public slots:
    void setTextToDefault();
    void updateText();

private:
    QString m_buttonText;
    int m_countClicked;

};

#endif // BACKEND_H
