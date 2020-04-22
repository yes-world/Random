#include "generator.h"
#include <ctime>

Generator::Generator(QObject *parent) : QObject(parent)
{

}

int Generator::number() const
{
    return m_number;
}

void Generator::setNumber(int number)
{
    if (m_number == number)
        return;

    m_number = number;
    emit numberChanged(m_number);
}

void Generator::generate()
{
    setNumber(1 + rand() % 6);
}
