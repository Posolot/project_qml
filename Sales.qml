import QtQuick 2.15
import QtQuick.Controls 2.15
import QtQuick.Layouts 1.15

Rectangle {
    id: sales
    width: parent.width
    height: 800
    color: "transparent"

    GridLayout {
        anchors.fill: parent
        columns: 2
        rowSpacing: 40
        columnSpacing: 40
        anchors.margins: 60

        // Первый элемент
        Rectangle {
            Layout.fillWidth: true
            Layout.fillHeight: true
            color: "#D3B08F"
            border.color: "#cccccc"
            radius: 10
            anchors.margins: 10

            Column {
                anchors.fill: parent
                anchors.margins: 30
                spacing: 10

                // Картинка
                Rectangle {
                    id: imageContainer1
                    width: parent.width
                    height: parent.height * 0.5
                    color: "lightgray"
                    radius: 10
                    border.color: "#aaaaaa"

                    Image {
                        source: "src/image1.png"
                        anchors.fill: parent
                        fillMode: Image.PreserveAspectFit
                    }
                }

                // Заголовок
                Text {
                    text: "Утреннее настроение\nс 7:00 до 10:00 каждый будний день скидка 20% на все кофейные напитки. Идеальный способ начать день с зарядом энергии!"
                    font.pointSize: Math.min(parent.height * 0.05, 14) // Динамический размер текста
                    wrapMode: Text.Wrap
                    horizontalAlignment: Text.AlignLeft
                    anchors.horizontalCenter: parent.horizontalCenter
                    width: parent.width - 10
                }

                // Текст "Применить:" и переключатель
                Row {
                    id: row1
                    width: parent.width
                    height: parent.height * 0.1
                    spacing: 10
                    anchors.margins: 10

                    Text {
                        text: "Применить:"
                        font.pointSize: Math.min(parent.height * 0.45, 40) // Динамический размер текста
                        verticalAlignment: Text.AlignVCenter
                        horizontalAlignment: Text.AlignLeft
                        wrapMode: Text.NoWrap
                        anchors.verticalCenter: parent.verticalCenter
                        width: parent.width
                    }

                    Switch {
                        id: switch1
                        anchors.verticalCenter: parent.verticalCenter
                        anchors.right: parent.right
                        width: 60
                        height: 30
                        checked: false
                    }
                }
            }
        }

        // Второй элемент
        Rectangle {
            Layout.fillWidth: true
            Layout.fillHeight: true
            color: "#D3B08F"
            border.color: "#cccccc"
            radius: 10
            anchors.margins: 10

            Column {
                anchors.fill: parent
                anchors.margins: 30
                spacing: 10

                Rectangle {
                    id: imageContainer2
                    width: parent.width
                    height: parent.height * 0.5
                    color: "lightgray"
                    radius: 10
                    border.color: "#aaaaaa"

                    Image {
                        source: "src/image1.png"
                        anchors.fill: parent
                        fillMode: Image.PreserveAspectFit
                    }
                }

                Text {
                    text: "Утреннее настроение\nс 7:00 до 10:00 каждый будний день скидка 20% на все кофейные напитки. Идеальный способ начать день с зарядом энергии!"
                    font.pointSize: Math.min(parent.height * 0.05, 14)
                    wrapMode: Text.Wrap
                    horizontalAlignment: Text.AlignLeft
                    anchors.horizontalCenter: parent.horizontalCenter
                    width: parent.width - 10
                }

                Row {
                    id: row2
                    width: parent.width
                    height: parent.height * 0.1
                    spacing: 10
                    anchors.margins: 10

                    Text {
                        text: "Применить:"
                        font.pointSize: Math.min(parent.height * 0.45, 40)
                        verticalAlignment: Text.AlignVCenter
                        horizontalAlignment: Text.AlignLeft
                        wrapMode: Text.NoWrap
                        anchors.verticalCenter: parent.verticalCenter
                        width: parent.width * 0.6
                    }

                    Switch {
                        id: switch2
                        anchors.verticalCenter: parent.verticalCenter
                        anchors.right: parent.right
                        width: 60
                        height: 30
                        checked: false
                    }
                }
            }
        }

        Rectangle {
            Layout.fillWidth: true
            Layout.fillHeight: true
            color: "#D3B08F"
            border.color: "#cccccc"
            radius: 10
            anchors.margins: 10

            Column {
                anchors.fill: parent
                anchors.margins: 30
                spacing: 10

                // Картинка
                Rectangle {
                    id: imageContainer3
                    width: parent.width
                    height: parent.height * 0.5
                    color: "lightgray"
                    radius: 10
                    border.color: "#aaaaaa"

                    Image {
                        source: "src/image1.png"
                        anchors.fill: parent
                        fillMode: Image.PreserveAspectFit
                    }
                }

                // Заголовок
                Text {
                    text: "Утреннее настроение\nс 7:00 до 10:00 каждый будний день скидка 20% на все кофейные напитки. Идеальный способ начать день с зарядом энергии!"
                    font.pointSize: Math.min(parent.height * 0.05, 14) // Динамический размер текста
                    wrapMode: Text.Wrap
                    horizontalAlignment: Text.AlignLeft
                    anchors.horizontalCenter: parent.horizontalCenter
                    width: parent.width - 10
                }

                // Текст "Применить:" и переключатель
                Row {
                    id: row3
                    width: parent.width
                    height: parent.height * 0.1
                    spacing: 10
                    anchors.margins: 10

                    Text {
                        text: "Применить:"
                        font.pointSize: Math.min(parent.height * 0.45, 40) // Динамический размер текста
                        verticalAlignment: Text.AlignVCenter
                        horizontalAlignment: Text.AlignLeft
                        wrapMode: Text.NoWrap
                        anchors.verticalCenter: parent.verticalCenter
                        width: parent.width * 0.6
                    }

                    Switch {
                        id: switch3
                        anchors.verticalCenter: parent.verticalCenter
                        anchors.right: parent.right
                        width: 60
                        height: 30
                        checked: false
                        }
                    }
            }
        }

        // Второй элемент
        Rectangle {
            Layout.fillWidth: true
            Layout.fillHeight: true
            color: "#D3B08F"
            border.color: "#cccccc"
            radius: 10
            anchors.margins: 10

            Column {
                anchors.fill: parent
                anchors.margins: 30
                spacing: 10

                Rectangle {
                    id: imageContainer4
                    width: parent.width
                    height: parent.height * 0.5
                    color: "lightgray"
                    radius: 10
                    border.color: "#aaaaaa"

                    Image {
                        source: "src/image1.png"
                        anchors.fill: parent
                        fillMode: Image.PreserveAspectFit
                    }
                }

                Text {
                    text: "Утреннее настроение\nс 7:00 до 10:00 каждый будний день скидка 20% на все кофейные напитки. Идеальный способ начать день с зарядом энергии!"
                    font.pointSize: Math.min(parent.height * 0.05, 14)
                    wrapMode: Text.Wrap
                    horizontalAlignment: Text.AlignLeft
                    anchors.horizontalCenter: parent.horizontalCenter
                    width: parent.width - 10
                }

                Row {
                    id: row4
                    width: parent.width
                    height: parent.height * 0.1
                    spacing: 10
                    anchors.margins: 10

                    Text {
                        text: "Применить:"
                        font.pointSize: Math.min(parent.height * 0.45, 40)
                        verticalAlignment: Text.AlignVCenter
                        horizontalAlignment: Text.AlignLeft
                        wrapMode: Text.NoWrap
                        anchors.verticalCenter: parent.verticalCenter
                        width: parent.width * 0.6
                    }

                    Switch {
                        id: switch4
                        anchors.verticalCenter: parent.verticalCenter
                        anchors.right: parent.right
                        width: 60
                        height: 30
                        checked: false
                    }
                }
            }
        }
    }
}
