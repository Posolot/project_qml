import QtQuick 2.15
import QtQuick.Controls 2.15
import QtQuick.Layouts 1.15

Rectangle {
    id: aboutSection
    width: parent.width
    height: 894
    color: "transparent"

    property int currentIndex: 0
    property var images: ["src/coffee_1.png", "src/coffee_2.png", "src/cofee_3.png"]

    property int smallWidth: 180
    property int smallHeight: 120
    property int largeWidth: 360
    property int largeHeight: 240

    ColumnLayout {
        spacing: 20
        width: parent.width
        height: parent.height

        // Карусель
        RowLayout {
            spacing: 20
            width: parent.width
            height: 400

            // Левая стрелка
            Text {
                text: "◀"
                font.pixelSize: 80
                color: "black"
                Layout.alignment: Qt.AlignVCenter | Qt.AlignLeft
                MouseArea {
                    anchors.fill: parent
                    onClicked: {
                        currentIndex = (currentIndex - 1 + images.length) % images.length;
                    }
                }
            }

            // Контейнер для изображений
            RowLayout {
                spacing: 10
                width: 596
                height: 400
                Layout.alignment: Qt.AlignHCenter

                // Предыдущее изображение
                Image {
                    source: images[(currentIndex - 1 + images.length) % images.length]
                    sourceSize.width: smallWidth
                    sourceSize.height: smallHeight
                    Layout.alignment: Qt.AlignVCenter
                    fillMode: Image.PreserveAspectFit
                    opacity: 0.5
                }

                // Текущее изображение
                Image {
                    source: images[currentIndex]
                    sourceSize.width: largeWidth
                    sourceSize.height: largeHeight
                    Layout.alignment: Qt.AlignVCenter
                    fillMode: Image.PreserveAspectFit
                }

                // Следующее изображение
                Image {
                    source: images[(currentIndex + 1) % images.length]
                    sourceSize.width: smallWidth
                    sourceSize.height: smallHeight
                    Layout.alignment: Qt.AlignVCenter
                    fillMode: Image.PreserveAspectFit
                    opacity: 0.5
                }
            }

            // Правая стрелка
            Text {
                text: "▶"
                font.pixelSize: 80
                color: "black"
                Layout.alignment: Qt.AlignVCenter | Qt.AlignRight
                MouseArea {
                    anchors.fill: parent
                    onClicked: {
                        currentIndex = (currentIndex + 1) % images.length;
                    }
                }
            }
        }

        // Остальная информация
        RowLayout {
            spacing: 20
            Layout.fillWidth: true

            Rectangle {
                width: 653
                height: 850
                color: "transparent"
                Layout.alignment: Qt.AlignLeft
                Text {
                    text: "SIPPITY - это уютная кофейня..."
                    font.pixelSize: 24
                    color: "black"
                    wrapMode: Text.WordWrap
                    width: parent.width - 20
                    Layout.alignment: Qt.AlignHCenter
                }
            }

            Rectangle {
                width: 596
                height: 894
                color: "transparent"
                Layout.alignment: Qt.AlignRight
                Image {
                    source: "src/barista.png"
                    sourceSize.width: 596
                    sourceSize.height: 894
                    fillMode: Image.PreserveAspectFit
                }
            }
        }
    }
}
