import QtQuick 2.15
import QtQuick.Controls 2.15
import QtQuick.Layouts 1.15

Rectangle {
    id: aboutSection
    width: parent.width
    height: 1400
    color: "transparent"

    property int currentIndex: 0
    property var images: ["src/coffee_1.png", "src/coffee_2.png", "src/cofee_3.png"]

    ColumnLayout {
        spacing: 20
        anchors.fill: parent
        anchors.margins: 20
        RowLayout {

            Layout.fillWidth: true
            Layout.preferredHeight: 400
            Layout.alignment: Qt.AlignHCenter

            Rectangle {
                width: 80
                height: 160
                color: "transparent"
                Text {
                    text: "<"
                    font.pixelSize: 80
                    anchors.centerIn: parent
                    color: "black"
                }
                MouseArea {
                    anchors.fill: parent
                    onClicked: {
                        currentIndex = (currentIndex - 1 + images.length) % images.length;
                    }
                }
            }

            // Контейнер для изображений
            RowLayout {
                spacing: 30
                Layout.fillWidth: true
                Layout.fillHeight: true
                Layout.alignment: Qt.AlignHCenter

                // Предыдущее изображение
                Rectangle {
                    Layout.preferredWidth: 400
                    Layout.preferredHeight: 300
                    color: "transparent"
                    Image {
                        source: images[(currentIndex - 1 + images.length) % images.length]
                        fillMode: Image.PreserveAspectFit
                        anchors.fill: parent
                    }
                    opacity: 0.5
                }

                // Текущее изображение
                Rectangle {
                    Layout.preferredWidth: 500
                    Layout.preferredHeight: 350
                    color: "transparent"
                    Image {
                        source: images[currentIndex]
                        fillMode: Image.PreserveAspectFit
                        anchors.fill: parent
                    }
                }

                // Следующее изображение
                Rectangle {
                    Layout.preferredWidth: 400
                    Layout.preferredHeight: 300
                    color: "transparent"
                    Image {
                        source: images[(currentIndex + 1) % images.length]
                        fillMode: Image.PreserveAspectFit
                        anchors.fill: parent
                    }
                    opacity: 0.5
                }
            }

            // Правая кнопка
            Rectangle {
                width: 80
                height: 160
                color: "transparent"
                Text {
                    text: ">"
                    font.pixelSize: 80
                    anchors.centerIn: parent
                    color: "black"
                }
                MouseArea {
                    anchors.fill: parent
                    onClicked: {
                        currentIndex = (currentIndex + 1) % images.length;
                    }
                }
            }
        }
        RowLayout {
            spacing: 20
            Layout.fillWidth: true
            Layout.preferredHeight: 850
            Layout.alignment: Qt.AlignHCenter

            Rectangle {
                Layout.preferredWidth: 653
                Layout.preferredHeight: 850
                color: "transparent"
                Text {
                    text: "SIPPITY - это уютная кофейня, которая расположена в самом сердце города. Здесь каждый посетитель может насладиться ароматным кофе, приготовленным с любовью и страстью. \n\nИстория нашей кофейни началась много лет назад, когда молодая пара, Джейк и Лили, решили открыть свое собственное заведение. \n\nОни оба были ценителями хорошего кофе и стремились создать место, где каждый посетитель почувствует себя как дома. \n\nС первого дня SIPPITY стало популярным местом среди жителей и туристов. Уютная атмосфера и вкуснейший кофе сделали его любимым местом для встреч с друзьями, деловых переговоров.\n\nМы постоянно работаем над совершенствованием нашего меню, чтобы удивлять наших гостей новыми вкусами и сочетаниями. Мы гордимся тем, что создали место, где каждый чувствует себя как дома, и где можно насладиться хорошим кофе в дружеской обстановке. \n\nПриходите к нам в SIPPITY и окунитесь в мир ароматов и вкусов, который мы с удовольствием делим с вами!"
                    font.pixelSize: 24
                    color: "black"
                    wrapMode: Text.WordWrap
                    width: parent.width - 20
                }
            }

            Rectangle {
                Layout.preferredWidth: 596
                Layout.preferredHeight: 894
                color: "transparent"
                Image {
                    sourceSize.height: 894
                    sourceSize.width: 596
                    source: "src/barista.png"
                    fillMode: Image.PreserveAspectFit
                }
            }
        }
    }
}
