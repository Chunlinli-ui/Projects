import QtQuick 2.0
import QtQuick.Layouts 1.0
Item {
    width: columnLayout.width*2
    height:columnLayout.height+musicPlayer.height
    anchors.horizontalCenter: parent.horizontalCenter
    property alias musicPlayer:musicPlayer
    property alias fileNameText:fileNameText
    property alias singerText:singerText
    property alias playlistPage:playlistPage
    property alias lyricPage:lyricPage
    property alias lyricPage1:lyricPage1
    property alias leftImage:leftImage
    property alias spectrogram: spectrogram
    RowLayout{
        id:rowLayout
        Layout.alignment:Qt.AlignHCenter
        ColumnLayout{
            id:columnLayout
            Layout.alignment: Qt.AlignTop
            Image {
                id: leftImage
                Layout.topMargin: 20
                fillMode: Image.PreserveAspectCrop
                Layout.preferredWidth: 371
                Layout.preferredHeight: 265
                cache: false
            }
            Spectrogram{
                id: spectrogram
                width: 300
                height: 130
                Layout.alignment: Qt.AlignHCenter
                anchors.topMargin: 15
            }
            LyricPage{
                id:lyricPage1
                visible:true
                Layout.topMargin: 15
                width: 300
                height: 90
            }

        }
        ColumnLayout{
            Layout.alignment: Qt.AlignTop
            Text {
                id: fileNameText
                font.pointSize: 20
                Layout.leftMargin: 140
                Layout.topMargin: 20
            }
            Text {
                id: singerText
                font.pointSize: 10
                visible: true
                Layout.leftMargin: 150
                Layout.topMargin: 10
            }
            LyricPage{
                id:lyricPage
                visible: true
                Layout.leftMargin: 70
                Layout.topMargin: 50
                width: 300
                height: 400
            }
            PlaylistPage{
                id:playlistPage
                visible: false
                Layout.leftMargin: 140
            //    Layout.topMargin: 50
            }
        }
    }
    MusicPlayer{
        id:musicPlayer
        anchors.bottom: parent.bottom
        anchors.left: parent.left
    }
}
