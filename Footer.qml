import QtQuick 2.15
import QtQuick.Controls 2.15
import QtQuick.Layouts 1.15

Rectangle {
    id: footer
    width: parent.width
    height: 300
    color: "#593C27"
    opacity: 1

    RowLayout {
        anchors.fill: parent
        anchors.margins: 20
        spacing: 40

        Rectangle {
            Layout.leftMargin: 50
            color: "transparent"
            Layout.preferredWidth: 200
            Layout.preferredHeight: 200
            Column {
                anchors.fill: parent
                spacing: 10
                Text {
                    text: "График работы:"
                    color: "white"
                    font.bold: true
                    font.pixelSize: 18
                }
                Text {
                    text: "пн 9:00-22:00\nвт 9:00-22:00\nср 9:00-22:00\nчт 9:00-22:00\nпт 9:00-22:00\nсб 9:00-22:00\nвс 9:00-22:00"
                    color: "white"
                    font.pixelSize: 16
                }
            }
        }

        Rectangle {
            color: "transparent"
            Layout.preferredWidth: 200
            Layout.preferredHeight: 200
            Column {
                anchors.fill: parent
                spacing: 10
                Text {
                    text: "Где мы?"
                    color: "white"
                    font.bold: true
                    font.pixelSize: 18
                }
                RowLayout{
                    spacing: 10
                    Image{
                        sourceSize.height: 40
                        sourceSize.width: 40
                        source: "src/point.png"
                        fillMode: Image.PreserveAspectFit
                    }
                    Text {
                        text: "ул. Ленина, 252"
                        color: "white"
                        font.pixelSize: 16
                    }
                }
                RowLayout{
                    spacing: 10
                    Image{
                        sourceSize.height: 40
                        sourceSize.width: 40
                        source: "src/phone.png"
                        fillMode: Image.PreserveAspectFit
                    }
                    Text {
                        text: "+7 (999) 999-99-99"
                        color: "white"
                        font.pixelSize: 16
                    }
                }

            }
        }

        Rectangle {
            color: "transparent"
            Layout.preferredWidth: 450
            Layout.preferredHeight: 300
            Layout.alignment: Qt.AlignRight
            Layout.rightMargin: 100
            Image {
                source: "src/map.png"
                sourceSize.width: 450
                sourceSize.height: 300
                fillMode: Image.PreserveAspectFit
                anchors.centerIn: parent
            }
        }
    }
}
