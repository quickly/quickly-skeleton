import QtQuick 2.5
import QtQuick.Controls 1.3
import QtQuick.Layouts 1.3
import "app.js" as App

ApplicationWindow {
    title: "Quickly Skeleton"
    visible: true
    width: 400
    height: 500

    toolBar: ToolBar {
        RowLayout {
            anchors.fill: parent
            spacing: 8

            TextField {
                id: textField
                Layout.fillWidth: true
                onAccepted: loadUrl(text)
                placeholderText: "Enter URL here"
            }

            Button {
                text: "Go!"
                onClicked: loadUrl(textField.text)
            }
        }
    }

    TextArea {
        id: textArea
        anchors {
            fill: parent
            margins: 8
        }

        text: "Enter a URL to view the source"
    }

    function loadUrl(url) {
        App.loadUrl(url)
            .then(function(text) {
                textArea.text = text;
            })
    }
}
