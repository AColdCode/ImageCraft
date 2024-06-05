#include <QGuiApplication>
#include <QQmlApplicationEngine>
#include <QQmlContext>
#include "activectrl.h"
#include "editor.h"
#include "imageprovider.h"

int main(int argc, char *argv[])
{
    QGuiApplication app(argc, argv);

    qmlRegisterSingletonInstance<ActiveCtrl>("com.activectrl",
                                             1,
                                             0,
                                             "ActiveCtrl",
                                             ActiveCtrl::singleton());

    QQmlApplicationEngine engine;
    QObject::connect(
        &engine,
        &QQmlApplicationEngine::objectCreationFailed,
        &app,
        []() { QCoreApplication::exit(-1); },
        Qt::QueuedConnection);

    engine.rootContext()->setContextProperty("imageProvider", ImageProvider::instance());
    engine.addImageProvider(QLatin1String("editorimage"), ImageProvider::instance());
    engine.loadFromModule("ImageLoader", "Main");

    return app.exec();
}
