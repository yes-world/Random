import QtQuick 2.12
import QtQuick.Window 2.12
import QtQuick.Controls 2.12
import Generator 1.0

Window {
    visible: true
    width: 320
    height: 480
    title: qsTr("Генератор")
    Column {
        anchors.centerIn: parent
        CubeForm {
            status: rand.number
        }
        Item {
            width: 250
            height: 20
        }
        Button {
            width: 250
            height: 75
            text: "Сгенерировать"
            font.pointSize: 15
            onClicked: {
                rand.generate();
            }
        }
    }
    Generator {
        id: rand
    }
}
