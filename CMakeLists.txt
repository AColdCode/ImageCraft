cmake_minimum_required(VERSION 3.29)

project(
  ImageLoader
  VERSION 0.1
  LANGUAGES CXX)

find_package(Qt6 6.5 REQUIRED COMPONENTS Quick)

qt_standard_project_setup(REQUIRES 6.7)

qt_add_executable(appImageLoader main.cpp)

qt_add_qml_module(
  appImageLoader
  URI
  ImageCraft
  VERSION
  1.0
  QML_FILES
  RCenter.qml
  QML_FILES
  Main.qml
  LCenter.qml
  QML_FILES
  modules/se/qt/toolBar/Zoom_toolBar.ui.qml
  modules/se/qt/toolBar/Word_toolBar.ui.qml
  modules/se/qt/toolBar/Straw_toolBar.ui.qml
  modules/se/qt/toolBar/Rectangle_toolBar.ui.qml
  modules/se/qt/toolBar/PathSelect_toolBar.ui.qml
  modules/se/qt/toolBar/MyToolBar.qml
  modules/se/qt/toolBar/Move_toolBar.ui.qml
  modules/se/qt/toolBar/Lasso_toolBar.ui.qml
  modules/se/qt/toolBar/Grip_toolBar.ui.qml
  modules/se/qt/toolBar/Frame_toolBar.ui.qml
  modules/se/qt/toolBar/Eraser_toolBar.ui.qml
  modules/se/qt/toolBar/Cutout_toolBar.ui.qml
  modules/se/qt/toolBar/CloneStamp_toolBar.ui.qml
  modules/se/qt/toolBar/Choice_toolBar.ui.qml
  modules/se/qt/toolBar/Brush_toolBar.qml
  modules/se/qt/toolBar/Boxselect_toolBar.ui.qml
  QML_FILES
  modules/se/qt/menu/MyMenuItem.qml
  modules/se/qt/menu/MyMenu.qml
  modules/se/qt/menu/Menu_Word.qml
  modules/se/qt/menu/Menu_Window.qml
  modules/se/qt/menu/Menu_View.qml
  modules/se/qt/menu/Menu_Select.qml
  modules/se/qt/menu/Menu_Layer.qml
  modules/se/qt/menu/Menu_Help.qml
  modules/se/qt/menu/Menu_Graphics.qml
  modules/se/qt/menu/Menu_Filter.qml
  modules/se/qt/menu/Menu_File.qml
  modules/se/qt/menu/Menu_Edit.qml
  RESOURCES
  modules/se/qt/toolBar/qmldir
  RESOURCES
  modules/se/qt/menu/qmldir
  RESOURCES
  res.qrc
  SOURCES
  editor.h
  editor.cpp
  QML_FILES
  EditorView.qml
  SOURCES
  activectrl.h
  activectrl.cpp
  SOURCES
  imageprovider.h
  imageprovider.cpp
  QML_FILES
  DialogBox.qml
  QML_FILES
  ImageTag.qml
  SOURCES
  toolctrl.h
  toolctrl.cpp
  QML_FILES
)

target_compile_features(appImageLoader PRIVATE cxx_std_20)

set_target_properties(
  appImageLoader
  PROPERTIES AUTORCC TRUE
             MACOSX_BUNDLE_GUI_IDENTIFIER my.example.com
             MACOSX_BUNDLE_BUNDLE_VERSION ${PROJECT_VERSION}
             MACOSX_BUNDLE_SHORT_VERSION_STRING
             ${PROJECT_VERSION_MAJOR}.${PROJECT_VERSION_MINOR}
             MACOSX_BUNDLE TRUE
             WIN32_EXECUTABLE TRUE)

target_link_libraries(
  appImageLoader
  PRIVATE Qt6::Quick
          # /usr/lib \                  # OpenCV的lib路径
          opencv_core opencv_imgproc opencv_highgui opencv_imgcodecs)
# 其他需要的OpenCV模块库)

include(GNUInstallDirs)
install(
  TARGETS appImageLoader
  BUNDLE DESTINATION .
  LIBRARY DESTINATION ${CMAKE_INSTALL_LIBDIR}
  RUNTIME DESTINATION ${CMAKE_INSTALL_BINDIR})

include_directories(/usr/include/opencv4)

# qt_add_executable(ImageLoader)  //Creates and finalizes an application target
# of a platform-specific type. This command performs the following tasks: 1.
# Create a CMake target of the appropriate type for the target platform. 2. Link
# the target to the Qt::Core library. 3. Handle finalization of the CMake
# target.

# qt_standard_project_setup()     #set(CMAKE_AUTOUIC ON)  set(CMAKE_AUTOMOC ON)

# @if %{HasTranslation} find_package(Qt6 REQUIRED COMPONENTS Core Quick
# LinguistTools) @else find_package(Qt6 REQUIRED COMPONENTS Core Quick) @endif

# target_sources(appImageLoader PRIVATE main.cpp qml.qrc @if %{HasTranslation}
# %{TsFileName} @endif
#
# PUBLIC
#
# )

# qt_import_qml_plugins(ImageLoader)

# cmake_minimum_required(VERSION 3.16)
#
# project(ImageLoader VERSION 0.1 LANGUAGES CXX)
#
# @if !true set(CMAKE_AUTOMOC ON) @endif set(CMAKE_CXX_STANDARD_REQUIRED ON)
#
# find_package(Qt6 6.5 REQUIRED COMPONENTS Quick)
#
# @if true @if true qt_standard_project_setup(REQUIRES 6.5) @else
# qt_standard_project_setup() @endif @endif
#
# qt_add_executable(appImageLoader main.cpp )
#
# qt_add_qml_module(appImageLoader URI ImageLoader VERSION 1.0 QML_FILES
# Main.qml )
#
# # Qt for iOS sets MACOSX_BUNDLE_GUI_IDENTIFIER automatically since Qt 6.1. #
# If you are developing for iOS or macOS you should consider setting an #
# explicit, fixed bundle identifier manually though.
# set_target_properties(appImageLoader PROPERTIES # MACOSX_BUNDLE_GUI_IDENTIFIER
# com.example.appImageLoader MACOSX_BUNDLE_BUNDLE_VERSION ${PROJECT_VERSION}
# MACOSX_BUNDLE_SHORT_VERSION_STRING
# ${PROJECT_VERSION_MAJOR}.${PROJECT_VERSION_MINOR} MACOSX_BUNDLE TRUE
# WIN32_EXECUTABLE TRUE )
#
# target_link_libraries(appImageLoader PRIVATE Qt6::Quick )
#
# include(GNUInstallDirs) install(TARGETS appImageLoader BUNDLE DESTINATION .
# LIBRARY DESTINATION ${CMAKE_INSTALL_LIBDIR} RUNTIME DESTINATION
# ${CMAKE_INSTALL_BINDIR} )
