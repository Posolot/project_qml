import QtQuick 2.15
import QtQuick.Controls 2.15
import QtQuick.Layouts 1.15

ApplicationWindow {
    visible: true
    width: 1920
    height: 1080

    Image {
        anchors.fill: parent
        source: "src/back.jpg"
        fillMode: Image.PreserveAspectCrop
        opacity: 0.7
    }
    Rectangle {
        anchors.fill: parent
        color: "#FFF3E8"
        opacity: 0.8
    }

    Flickable {
        id: contentArea
        width: parent.width
        height: parent.height
        contentWidth: parent.width
        contentHeight: header.height + mainColumn.height  + footer.height + 80
        clip: true

        Column {
            id: layout
            width: parent.width
            spacing: 20

            Header {
                id: header
                width: parent.width
                Layout.preferredHeight: 80

                onCurrentStateChanged: {
                    mainColumn.visible = currentState === "menu";
                    sales.visible = currentState === "promo";
                    aboutSection.visible = currentState === "home";

                }
            }

            My_menu {
                id: mainColumn
                width: parent.width
                height: 1400
                visible: false
                Layout.alignment: Qt.AlignHCenter
                z: 0
            }
            Sales {
                id: sales
                width: parent.width
                height: 1400
                visible: false
                Layout.alignment: Qt.AlignHCenter
                z: 0
            }
            AboutSection {
                id: aboutSection
                width: parent.width
                height: 1400
                visible: true
                z: 0

            }

            Footer {
                id: footer
                width: parent.width
                height: 400
                visible: true
                Layout.alignment: Qt.AlignBottom
                z: 1
                opacity: 1
            }
        }
    }
}

