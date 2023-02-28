import QtQuick 2.15

Rectangle{
    property string t0x0: "--"
    property string t0x1: "--"
    property string t0x2: "2"
    property string t0x3: "2"
    property string t1x0: "--"
    property string t1x1: "--"
    property string t1x2: "--"
    property string t1x3: "2"
    property string t2x0: "--"
    property string t2x1: "--"
    property string t2x2: "--"
    property string t2x3: "--"
    property string t3x0: "--"
    property string t3x1: "--"
    property string t3x2: "--"
    property string t3x3: "--"

    property color bgColor: "gray"
    property color textColor: "orange"
    property int fontSize: 30
    Grid{
        columns: 4
        rows: 4
        anchors.fill: parent
        Rectangle{
            id: my0x0
            color: bgColor
            height: parent.height/4
            width : parent.width/4
            Text {
                font.pixelSize: fontSize
                color: textColor
                anchors.centerIn: parent
                text: t0x0
            }
        }
        Rectangle{
            id: my0x1
            color: bgColor
            height: parent.height/4
            width : parent.width/4
            Text {
                font.pixelSize: fontSize
                color: textColor
                anchors.centerIn: parent
                text: t0x1
            }
        }
        Rectangle{
            id: my0x2
            color: bgColor
            height: parent.height/4
            width : parent.width/4
            Text {
                font.pixelSize: fontSize
                color: textColor
                anchors.centerIn: parent
                text: t0x2
            }
        }
        Rectangle{
            id: my0x3
            color: bgColor
            height: parent.height/4
            width : parent.width/4
            Text {
                font.pixelSize: fontSize
                color: textColor
                anchors.centerIn: parent
                text: t0x3
            }
        }
        Rectangle{
            id: my1x0
            color: bgColor
            height: parent.height/4
            width : parent.width/4
            Text {
                font.pixelSize: fontSize
                color: textColor
                anchors.centerIn: parent
                text: t1x0
            }
        }
        Rectangle{
            id: my1x1
            color: bgColor
            height: parent.height/4
            width : parent.width/4
            Text {
                font.pixelSize: fontSize
                color: textColor
                anchors.centerIn: parent
                text: t1x1
            }
        }
        Rectangle{
            id: my1x2
            color: bgColor
            height: parent.height/4
            width : parent.width/4
            Text {
                font.pixelSize: fontSize
                color: textColor
                anchors.centerIn: parent
                text: t1x2
            }
        }
        Rectangle{
            id: my1x3
            color: bgColor
            height: parent.height/4
            width : parent.width/4
            Text {
                font.pixelSize: fontSize
                color: textColor
                anchors.centerIn: parent
                text: t1x3
            }
        }
        Rectangle{
            id: my2x0
            color: bgColor
            height: parent.height/4
            width : parent.width/4
            Text {
                font.pixelSize: fontSize
                color: textColor
                anchors.centerIn: parent
                text: t2x0
            }
        }
        Rectangle{
            id: my2x1
            color: bgColor
            height: parent.height/4
            width : parent.width/4
            Text {
                font.pixelSize: fontSize
                color: textColor
                anchors.centerIn: parent
                text: t2x1
            }
        }
        Rectangle{
            id: my2x2
            color: bgColor
            height: parent.height/4
            width : parent.width/4
            Text {
                font.pixelSize: fontSize
                color: textColor
                anchors.centerIn: parent
                text: t2x2
            }
        }
        Rectangle{
            id: my2x3
            color: bgColor
            height: parent.height/4
            width : parent.width/4
            Text {
                font.pixelSize: fontSize
                color: textColor
                anchors.centerIn: parent
                text: t2x3
            }
        }
        Rectangle{
            id: my3x0
            color: bgColor
            height: parent.height/4
            width : parent.width/4
            Text {
                font.pixelSize: fontSize
                color: textColor
                anchors.centerIn: parent
                text: t3x0
            }
        }
        Rectangle{
            id: my3x1
            color: bgColor
            height: parent.height/4
            width : parent.width/4
            Text {
                font.pixelSize: fontSize
                color: textColor
                anchors.centerIn: parent
                text: t3x1
            }
        }

        Rectangle{
            id: my3x2
            color: bgColor
            height: parent.height/4
            width : parent.width/4
            Text {
                font.pixelSize: fontSize
                color: textColor
                anchors.centerIn: parent
                text: t3x2
            }
        }
        Rectangle{
            id: my3x3
            color: bgColor
            height: parent.height/4
            width : parent.width/4
            Text {
                font.pixelSize: fontSize
                color: textColor
                anchors.centerIn: parent
                text: t3x3
            }
        }
    }
}
