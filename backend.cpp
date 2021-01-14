#include "backend.h"

Backend::Backend(QObject *parent) : QObject(parent)
{
    m_buttonText = "Press me";
    m_countClicked = 0;
}

QString Backend::buttonText()
{
    return m_buttonText;
}

void Backend::setButtonText(const QString &buttonText)
{
    if (m_buttonText == buttonText)
        return;

    m_buttonText = buttonText;
    emit buttonTextChanged();
}

void Backend::setTextToDefault()
{
    if (m_buttonText == "Press me")
        return;

    m_buttonText = "Press me";
    m_countClicked = 0;
    emit buttonTextChanged();
}

void Backend::updateText()
{
    m_buttonText = QStringLiteral("Clicked times: %1").arg(++m_countClicked);

    emit buttonTextChanged();
}


