#ifndef GENERATOR_H
#define GENERATOR_H

#include <QObject>

class Generator : public QObject
{
    Q_OBJECT
    Q_PROPERTY(int number READ number WRITE setNumber NOTIFY numberChanged)

public:
    explicit Generator(QObject *parent = nullptr);
    int number() const;

public slots:
    void setNumber(int number);
    void generate();

signals:
    void numberChanged(int number);

private:
    int m_number = 1;
};

#endif // GENERATOR_H
