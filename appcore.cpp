#include "appcore.h"

appCore::appCore(QObject *parent) : QObject(parent)
{
    m_innerNumber = 0;
}

int appCore::innerNumber()
{
    return m_innerNumber;
}

void appCore::setInnerNumber(const int &number)
{
    if (m_innerNumber == number) {
        return;
    }

    m_innerNumber = number;

    emit innerNumberChanged();
}

void appCore::reset()
{
    if (m_innerNumber != 0) {
        m_innerNumber = 0;
        emit innerNumberChanged();
    }
}
