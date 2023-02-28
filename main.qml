import QtQuick 2.15
import QtQuick.Window 2.15
Window {
    id: window
    width: 400
    height: 400
    visible: true
    title: "2048"

    GameItself{
        function update(){
            t0x0 = game.getCurr(0,0)
            t0x1 = game.getCurr(0,1)
            t0x2 = game.getCurr(0,2)
            t0x3 = game.getCurr(0,3)
            t1x0 = game.getCurr(1,0)
            t1x1 = game.getCurr(1,1)
            t1x2 = game.getCurr(1,2)
            t1x3 = game.getCurr(1,3)
            t2x0 = game.getCurr(2,0)
            t2x1 = game.getCurr(2,1)
            t2x2 = game.getCurr(2,2)
            t2x3 = game.getCurr(2,3)
            t3x0 = game.getCurr(3,0)
            t3x1 = game.getCurr(3,1)
            t3x2 = game.getCurr(3,2)
            t3x3 = game.getCurr(3,3)
        }

        anchors.fill: parent
        focus: true
        Keys.onPressed: {
            if (event.key === Qt.Key_Left) {
                console.log("move left");
                event.accepted = true;
                game.leftClicked();
                update()
            }
            if (event.key === Qt.Key_Right) {
                console.log("move right");
                event.accepted = true;
                game.righClicked();
                update()
            }
            if (event.key === Qt.Key_Down) {
                console.log("move down");
                event.accepted = true;
                game.downClicked();
                update()
            }
            if (event.key === Qt.Key_Up) {
                console.log("move up");
                event.accepted = true;
                game.upClicked();
                update()
            }
        }
    }
}
