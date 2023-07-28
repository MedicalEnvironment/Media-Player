import QtQuick 2.15
import QtQuick.Controls 2.15
import QtMultimedia 5.15

ApplicationWindow {
    visible: true
    width: 800
    height: 600
    title: "Simple Media Player"

    Rectangle {
        anchors.fill: parent

        Video {
            id: videoPlayer
            anchors.fill: parent
            source: "path/to/your/video.mp4" // Replace with your video file path
        }

        Row {
            anchors {
                bottom: parent.bottom
                left: parent.left
                right: parent.right
                margins: 10
            }
            spacing: 10

            Slider {
                value: videoPlayer.position / videoPlayer.duration
                onValueChanged: videoPlayer.position = value * videoPlayer.duration
            }

            Button {
                text: "▶️ Play"
            }

            Button {
                text: "⏸️ Pause"
            }

            Button {
                text: "⏹ Stop"
            }

            Button {
                text: "⏪️ Rewind"
            }

            Button {
                text: "⏩️ Forward"
            }
        }
    }
}
