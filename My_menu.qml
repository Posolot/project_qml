import QtQuick 2.15
import QtQuick.Controls 2.15
import QtQuick.Layouts 1.15

Column {
    id: mainColumn
    width: parent.width
    height: parent.height
    spacing: 20
    padding: 20

    Repeater {
        model: 3
        Row {
            spacing: 20
            anchors.horizontalCenter: parent.horizontalCenter

            Repeater {
                model: 3

                Rectangle {
                    width: 320
                    height: 400
                    radius: 15
                    color: "#F5E3D8"
                    border.color: "#D6C2B2"
                    border.width: 1

                    Column {
                        spacing: 20
                        anchors.fill: parent
                        anchors.margins: 15

                        Rectangle {
                            width: 290
                            height: 230
                            radius: 10
                            color: "transparent"
                            border.width: 0
                            Layout.topMargin: 20

                            Image {
                                source: "src/cofee_4.png"
                                sourceSize.width: 270
                                sourceSize.height: 200
                                fillMode: Image.PreserveAspectFit
                                anchors.centerIn: parent
                                anchors.margins: 10
                            }
                        }

                        Column {
                            spacing: 10
                            anchors.horizontalCenter: parent.horizontalCenter

                            RowLayout {
                                width: parent.width
                                spacing: 10

                                Text {
                                    text: "Капучино"
                                    font.pixelSize: 22
                                    color: "#4F4F4F"
                                    Layout.alignment: Qt.AlignLeft
                                }

                                Text {
                                    text: "180руб / 200мл"
                                    font.pixelSize: 18
                                    color: "#7A7A7A"
                                    Layout.alignment: Qt.AlignRight
                                }
                            }

                            Rectangle {
                                width: 290
                                height: 50
                                radius: 10
                                color: "#E3D4C8"
                                border.color: "#D6C2B2"
                                border.width: 1

                                RowLayout {
                                    anchors.fill: parent
                                    spacing: 15

                                    Rectangle {
                                        width: 50
                                        height: 40
                                        color: "transparent"
                                        RowLayout {
                                            anchors.centerIn: parent
                                            Button {
                                                text: "-"
                                                anchors.centerIn: parent
                                                background: Rectangle {
                                                    color: "transparent"
                                                }
                                                onClicked: {
                                                    let currentValue = parseInt(quantityField.text);
                                                    if (currentValue > 1) {
                                                        quantityField.text = (currentValue - 1).toString();
                                                    }
                                                }
                                            }
                                        }
                                    }

                                    TextField {
                                        id: quantityField
                                        text: "1"
                                        width: 50
                                        height: 40
                                        font.pixelSize: 20
                                        horizontalAlignment: Text.AlignHCenter
                                        verticalAlignment: Text.AlignVCenter
                                        inputMethodHints: Qt.ImhDigitsOnly
                                        background: Rectangle {
                                            color: "transparent"
                                        }
                                    }

                                    Rectangle {
                                        width: 50
                                        height: 40
                                        color: "transparent"
                                        RowLayout {
                                            anchors.centerIn: parent
                                            Button {
                                                text: "+"
                                                anchors.centerIn: parent
                                                background: Rectangle {
                                                    color: "transparent"
                                                }
                                                onClicked: {
                                                    let currentValue = parseInt(quantityField.text);
                                                    quantityField.text = (currentValue + 1).toString();
                                                }
                                            }
                                        }
                                    }
                                }
                            }
                        }
                    }
                }
            }
        }
    }
}
