import QtQuick 2.15
import QtQuick.Controls 2.15
import QtQuick.Layouts 1.15

ApplicationWindow {
    visible: true
    width: 1920
    height: 1080
    Image {
        anchors.fill: parent
        source: "src/back_update.png"
        fillMode: Image.PreserveAspectCrop
    }

    Flickable {
        id: contentArea
        width: parent.width
        height: parent.height
        contentWidth: parent.width
        contentHeight: header.height + aboutSection.height + footer.height + 80
        clip: true

        ColumnLayout {
            id: layout
            width: parent.width
            spacing: 20

            Header {
                id: header
                width: parent.width
                Layout.preferredHeight: 80
            }

            AboutSection {
                id: aboutSection
                width: parent.width
                height: 894
            }

            Footer {
                id: footer
                width: parent.width
                height: 400
            }
        }
    }
}
