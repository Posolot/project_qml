import QtQuick 2.15
import QtQuick.Controls 2.15
import QtQuick.Layouts 1.15

Rectangle {
    id: header
    width: parent.width
    height: 100
    color: "transparent"
    property string currentState: "home"

    RowLayout {
        anchors.fill: parent
        anchors.margins: 10
        Image {
            Layout.leftMargin: 50
            source: "src/logo.png"
            sourceSize.height: 100
            sourceSize.width: 100
            Layout.alignment: Qt.AlignLeft
        }

        Rectangle {
            id: buttonContainer
            width: 400
            height: 50
            color: "transparent"
            radius: 10
            border.color: "#FFA07A"
            border.width: 2
            Layout.leftMargin: 130
            Layout.alignment: Qt.AlignHCenter

            RowLayout {
                anchors.fill: parent
                spacing: 0
                Rectangle {
                    id: homeButton
                    width: parent.width / 3
                    height: parent.height
                    color: header.currentState === "home" ? "#FFDAB9" : "transparent"
                    border.color: header.currentState === "home" ? "#FF8C00" : "transparent"
                    border.width: header.currentState === "home" ? 2 : 0
                    radius: 10

                    MouseArea {
                        anchors.fill: parent
                        onClicked: {
                            header.currentState = "home"
                            console.log("Главная нажата")
                        }
                    }

                    Text {
                        text: "Главная"
                        anchors.centerIn: parent
                        color: "black"
                        font.pixelSize: 16
                    }
                }
                Rectangle {
                    id: menuButton
                    width: parent.width / 3
                    height: parent.height
                    color: header.currentState === "menu" ? "#FFDAB9" : "transparent"
                    border.color: header.currentState === "menu" ? "#FF8C00" : "transparent"
                    border.width: header.currentState === "menu" ? 2 : 0
                    radius: 10

                    MouseArea {
                        anchors.fill: parent
                        onClicked: {
                            header.currentState = "menu"
                            console.log("Меню нажата")
                        }
                    }

                    Text {
                        text: "Меню"
                        anchors.centerIn: parent
                        color:"black"
                        font.pixelSize: 16
                    }
                }
                Rectangle {
                    id: promoButton
                    width: parent.width / 3
                    height: parent.height
                    color: header.currentState === "promo" ? "#FFDAB9" : "transparent"
                    border.color: header.currentState === "promo" ? "#FF8C00" : "transparent"
                    border.width: header.currentState === "promo" ? 2 : 0
                    radius: 10

                    MouseArea {
                        anchors.fill: parent
                        onClicked: {
                            header.currentState = "promo"
                            console.log("Акции нажата")
                        }
                    }

                    Text {
                        text: "Акции"
                        anchors.centerIn: parent
                        color: "black"
                        font.pixelSize: 16
                    }
                }
            }
        }
        RowLayout {
            id: rightContainer
            spacing: 10
            Layout.alignment: Qt.AlignRight
            Rectangle {
                width: 60
                height: 60
                color: "transparent"

                MouseArea {
                    anchors.fill: parent
                    onClicked: console.log("Корзина кнопка нажата")
                }

                Image {
                    sourceSize.height: 60
                    sourceSize.width: 60
                    source: "src/sales.png"
                    fillMode: Image.PreserveAspectFit
                }
            }

            Rectangle {
                width: 60
                height: 60
                color: "transparent"
                Layout.rightMargin: 50
                MouseArea {
                    anchors.fill: parent
                    onClicked: console.log("Аккаунт кнопка нажата")
                }

                Image {
                    sourceSize.height: 60
                    sourceSize.width: 60
                    source: "src/account.png"
                    fillMode: Image.PreserveAspectFit
                }
            }
        }
    }
}
