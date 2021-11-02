import QtQuick 2.15
import QtQuick.Window 2.15
import QtQuick.Layouts 1.3
import QtQuick.Controls 2.5

ApplicationWindow {
    id:rootId
    width: 800
    height: 450
    visible: true
    title: qsTr("Yolcu Bilgilendirme Ekranı")
    header:Label{
        id:headerId
        height: 50
        width: parent.width
        background: Rectangle{
            color:"steelblue"
            radius: 15
        }



        text:"GELECEK İSTASYON"
        color:"white"
        font.bold: true
        font.pixelSize: 25
        horizontalAlignment: Qt.AlignHCenter
        verticalAlignment: Qt.AlignVCenter
    }

    Rectangle{
        id:contentRectId
        anchors.fill:parent
        color:"lightsteelblue"
        RowLayout{
            Layout.fillWidth: true
            ColumnLayout{
                Rectangle{

                    Layout.preferredWidth: rootId.width * 0.5

                    height: 200

                    Layout.fillHeight: true
                    ColumnLayout{
                        id:columunId
                        anchors.centerIn: columunId
                        spacing: 20
                        anchors.horizontalCenter: parent.horizontalCenter

                        Label{
                            anchors.bottom: rectId.top
                            anchors.horizontalCenter: parent.horizontalCenter
                            horizontalAlignment: Qt.AlignHCenter
                            verticalAlignment: Qt.AlignVCenter
                            id:lineNameId
                            text:"Hat Adı"
                            font.bold: true
                            font.pointSize: 25
                            font.underline: true
                            color:"black"
                        }

                        Rectangle{
                            id:rectId
                            anchors.top: rectId.bottom
                            color: "beige"
                            width: parent.width
                            height: 300
                            anchors.centerIn: parent
                            ListView {
                              width: 240; height: 300
                              leftMargin: 50
                              spacing: 10




                                Component {
                                    id: contactsDelegate
                                    Rectangle {
                                        id: wrapper
                                        width: 200
                                        height: contactInfo.height
                                        radius: 10


                                        color:"lightseagreen"
    //                                    color: ListView.isCurrentItem ? "black" : "red"
                                        Text {
                                            id: contactInfo
                                            text: stationName
                                            anchors.horizontalCenter: parent.horizontalCenter

    //                                        color: wrapper.ListView.isCurrentItem ? "red" : "black"
                                        }
                                    }
                                }

                                model: ContactModel {}
                                delegate: contactsDelegate
                                focus: true
                            }
                        }



//                        ListView{
//                            id:mListViewId
//        //                    anchors.fill: parent
//        //                    Layout.alignment: parent

//                            width: parent.width
//                            height: 250
//                            model:stationData

//                            delegate: Rectangle{
//                                id: stationRectangleId
//                                width: parent.width
//                                height: 250
//                                color:"skyblue"
//                                radius: 10
//                                Text{
//                                    id:textId
//                                    anchors.centerIn: parent
//                                    font.pointSize: 20
//                                    text: stationName
//                                    color:"black"
//                                }
//                            }
//                        }

                    }

                }

            }

            ColumnLayout{
                RowLayout{
                    Layout.fillWidth: true
                    spacing: 15
                    Label{
                        id:timeId
                        text:"20.00"
                        font.bold: true
                        font.pointSize: 20

                        color:"black"
                    }
                    Label{
                        id:dateId
                        text:"25/10/2021"
                        font.bold: true
                        font.pointSize: 20

                        color:"black"
                    }
                    Label{
                        id:temperatureId
                        text:"20 °C"
                        font.bold: true
                        font.pointSize: 20

                        color:"black"
                    }

                }

                Rectangle{
                    border.color: "black"
                    border.width: 2
                    height: 200
                    width: 300
//                    anchors.centerIn: parent
                }

            }

        }
    }
}

//    ListModel{
//        id:stationData
//        ListElement{
//            stationName: " OGU"; stationId: "001"
//        }
//        ListElement{
//            stationName: " PORSUK"; stationId: "002"
//        }
//        ListElement{
//            stationName: " BÜYÜKDERE"; stationId: "003"
//        }
//        ListElement{
//            stationName: " GÖZTEPE"; stationId: "004"
//        }
//        ListElement{
//            stationName: " ATATÜRK BULVARI"; stationId: "005"
//        }
//        ListElement{
//            stationName: " VİŞNELİK"; stationId: "006"
//        }
//        ListElement{
//            stationName: " ŞEHİTLİK"; stationId: "007"
//        }
//    }

//}
