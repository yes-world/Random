import QtQuick 2.12

Item {
    width: 250
    height: 250
    property int status: 1
    Column {
        spacing: 5
        Row {
            spacing: 5
            Rectangle {
                id: point4
                width: 80
                height: 80
                color: status == 4 ? "black" : status == 5 ? "black" : status == 6 ? "black" : "white"
                radius: 40
            }
            Rectangle {
                width: 80
                height: 80
            }
            Rectangle {
                id: point3
                width: 80
                height: 80
                color: status == 1 ? "white" : "black"
                radius: 40
            }
        }
        Row {
            spacing: 5
            Rectangle {
                id: point6
                width: 80
                height: 80
                color: status == 6 ? "black" : "white"
                radius: 40
            }
            Rectangle {
                id: point1
                width: 80
                height: 80
                color: status == 1 ? "black" : status == 3 ? "black" : status == 5 ? "black" : "white"
                radius: 40
            }
            Rectangle {
                id: point7
                width: 80
                height: 80
                color: status == 6 ? "black" : "white"
                radius: 40
            }
        }
        Row {
            spacing: 5
            Rectangle {
                id: point2
                width: 80
                height: 80
                color: status == 1 ? "white" : "black"
                radius: 40
            }
            Rectangle {
                width: 80
                height: 80
            }
            Rectangle {
                id: point5
                width: 80
                height: 80
                color: status == 4 ? "black" : status == 5 ? "black" : status == 6 ? "black" : "white"
                radius: 40
            }
        }
    }
}
