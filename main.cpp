#include <QGuiApplication>
#include <QQmlApplicationEngine>
#include "generator.h"

int main(int argc, char *argv[])
{
    srand(time(0));
    QCoreApplication::setAttribute(Qt::AA_EnableHighDpiScaling);

    QGuiApplication app(argc, argv);

    QQmlApplicationEngine engine;
    const QUrl url(QStringLiteral("qrc:/main.qml"));
    QObject::connect(&engine, &QQmlApplicationEngine::objectCreated,
                     &app, [url](QObject *obj, const QUrl &objUrl) {
        if (!obj && url == objUrl)
            QCoreApplication::exit(-1);
    }, Qt::QueuedConnection);
    qmlRegisterType<Generator>("Generator", 1, 0, "Generator");
    engine.load(url);

    return app.exec();
}
