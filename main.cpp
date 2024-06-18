#include <QGuiApplication>
#include <QQmlApplicationEngine>
#include <QQmlContext>
#include "editor.h"
#include "imageprovider.h"

int main(int argc, char *argv[])
{
    QGuiApplication app(argc, argv);

    //设置组织和应用标识
    QCoreApplication::setOrganizationName("cqnu");
    QCoreApplication::setOrganizationDomain("cqnu.com");
    QCoreApplication::setApplicationName("ImageCraft");

    QQmlApplicationEngine engine;
    QObject::connect(
        &engine,
        &QQmlApplicationEngine::objectCreationFailed,
        &app,
        []() { QCoreApplication::exit(-1); },
        Qt::QueuedConnection);

    engine.rootContext()->setContextProperty("imageProvider", ImageProvider::instance());
    engine.addImageProvider(QLatin1String("editorimage"), ImageProvider::instance());
    engine.loadFromModule("ImageCraft", "Main");

    return app.exec();
}
