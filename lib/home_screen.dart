import 'package:bottom_sheet/bottom_sheet.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomSheet: GestureDetector(
        onTap: () {
          showFlexibleBottomSheet(
            minHeight: 0,
            initHeight: 0.5,
            maxHeight: 0.75,
            context: context,
            builder: (BuildContext context, ScrollController scrollController,
                double bottomSheetOffset) {
              return Material(
                color: Colors.transparent,
                child: Container(
                  margin: const EdgeInsets.all(6).copyWith(bottom: 0),
                  decoration: BoxDecoration(
                      color: Color(0xFF313035),
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(16),
                        topRight: Radius.circular(16),
                      )),
                  child: SingleChildScrollView(
                    child: Stack(alignment: Alignment.bottomRight, children: [
                      Positioned(
                        top: 170,
                        left: 200,
                        child: Image.asset(
                          "assets/beer.png",
                          width: 250,
                          color: Color(0xFFC9E5FF).withAlpha(35),
                        ),
                      ),
                      Container(
                        height: 400,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Padding(
                                  padding:
                                      const EdgeInsets.only(top: 15, left: 20),
                                  child: Text(
                                    "Mais uma dose!",
                                    style: TextStyle(
                                        fontSize: 30,
                                        fontWeight: FontWeight.w700,
                                        color: Colors.white.withOpacity(.9)),
                                  ),
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsets.only(top: 15, right: 20),
                                  child: IconButton(
                                    icon: Icon(Icons.close),
                                    onPressed: () {
                                      Navigator.of(context).pop();
                                    },
                                  ),
                                ),
                              ],
                            ),
                            Padding(
                              padding: const EdgeInsets.all(20),
                              child: Column(
                                children: [
                                  TextFormField(
                                    decoration: InputDecoration(
                                      labelText: "Nome",
                                    ),
                                  ),
                                  SizedBox(height: 20),
                                  TextFormField(
                                    decoration: InputDecoration(
                                      labelText: "Codigo",
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  elevation: 0,
                                  fixedSize: Size(340, 45),
                                  primary: Color(0XFF6697c1),
                                ),
                                onPressed: () {},
                                child: Text("Manda pra dentro!"))
                          ],
                        ),
                      ),
                    ]),
                  ),
                ),
              );
            },
            anchors: [0, 0.5, 1],
          );
        },
        child: Container(
          margin: const EdgeInsets.all(6).copyWith(bottom: 0),
          height: 50,
          decoration: BoxDecoration(
            color: Color(0xFF242526),
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(16),
              topRight: Radius.circular(16),
            ),
          ),
          child: Center(
            child: Icon(
              Icons.add,
              color: Color(0xFFC9E5FF),
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              margin: const EdgeInsets.all(6).copyWith(top: 0),
              width: double.infinity,
              padding: const EdgeInsets.only(top: 35),
              decoration: BoxDecoration(
                  color: Color(0xFF242526),
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(16),
                    bottomRight: Radius.circular(16),
                  )),
              child: Stack(children: [
                Positioned(
                  top: 0,
                  right: 0,
                  child: Image.asset(
                    "assets/beer.png",
                    width: 200,
                    color: Color(0xFFC9E5FF).withAlpha(35),
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 80, left: 20),
                      child: Text(
                        "Boteco Rastreios",
                        style: TextStyle(
                            fontSize: 40, fontWeight: FontWeight.w700),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 20, bottom: 40),
                      child: Text(
                        "Minhas doses",
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w500,
                            color: Theme.of(context)
                                .textTheme
                                .overline!
                                .color!
                                .withOpacity(.6)),
                      ),
                    ),
                  ],
                ),
              ]),
            ),
            SizedBox(height: 5),
            Container(
              margin: const EdgeInsets.all(6),
              width: double.infinity,
              decoration: BoxDecoration(
                  color: Color(0xFF242526),
                  borderRadius: BorderRadius.circular(16)),
              child: Column(
                children: [
                  ListTile(
                    contentPadding: const EdgeInsets.symmetric(
                      vertical: 10,
                      horizontal: 20,
                    ),
                    onTap: () {
                      showFlexibleBottomSheet(
                        minHeight: 0,
                        initHeight: 0.5,
                        maxHeight: 0.75,
                        context: context,
                        builder: (BuildContext context,
                            ScrollController scrollController,
                            double bottomSheetOffset) {
                          return Material(
                            color: Colors.transparent,
                            child: Container(
                              margin:
                                  const EdgeInsets.all(6).copyWith(bottom: 0),
                              decoration: BoxDecoration(
                                  color: Color(0xFF313035),
                                  borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(16),
                                    topRight: Radius.circular(16),
                                  )),
                              child: SingleChildScrollView(
                                child: Stack(
                                    alignment: Alignment.bottomRight,
                                    children: [
                                      Positioned(
                                        top: 170,
                                        left: 200,
                                        child: Image.asset(
                                          "assets/beer.png",
                                          width: 250,
                                          color:
                                              Color(0xFFC9E5FF).withAlpha(35),
                                        ),
                                      ),
                                      Container(
                                        height: 400,
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          children: [
                                            Row(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.center,
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                Padding(
                                                  padding:
                                                      const EdgeInsets.only(
                                                          top: 15, left: 20),
                                                  child: Text(
                                                    "Xiaomi Air Dots 2",
                                                    style: TextStyle(
                                                        fontSize: 20,
                                                        fontWeight:
                                                            FontWeight.w700,
                                                        color: Colors.white
                                                            .withOpacity(.9)),
                                                  ),
                                                ),
                                                Padding(
                                                  padding:
                                                      const EdgeInsets.only(
                                                          top: 15, right: 20),
                                                  child: IconButton(
                                                    icon: Icon(Icons.close),
                                                    onPressed: () {
                                                      Navigator.of(context)
                                                          .pop();
                                                    },
                                                  ),
                                                ),
                                              ],
                                            ),
                                            Container(
                                              margin: const EdgeInsets.all(6),
                                              padding: const EdgeInsets.all(10),
                                              decoration: BoxDecoration(
                                                  color: Color(0xFF242526)
                                                      .withAlpha(200),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          16)),
                                              child: Column(
                                                children: [
                                                  ListTile(
                                                    contentPadding:
                                                        const EdgeInsets
                                                            .symmetric(
                                                      vertical: 5,
                                                      horizontal: 0,
                                                    ),
                                                    onTap: () {},
                                                    visualDensity:
                                                        VisualDensity.compact,
                                                    leading: CircleAvatar(
                                                      backgroundColor:
                                                          Color(0xFFC9E5FF),
                                                      foregroundColor:
                                                          Color(0XFF6697c1),
                                                      child: Icon(Icons
                                                          .emoji_transportation),
                                                    ),
                                                    title: Text(
                                                      "Em trânsito para Agência dos Correios - Rio De Janeiro/RJ",
                                                      style: TextStyle(
                                                          fontWeight:
                                                              FontWeight.w500),
                                                    ),
                                                    subtitle: Text(
                                                      "Unidade de Distribuição - RIO DE JANEIRO/RJ Objeto encaminhado",
                                                      style: TextStyle(
                                                          fontSize: 12),
                                                    ),
                                                    trailing: Text(
                                                      "há 6 dias",
                                                      style: TextStyle(
                                                          fontSize: 12),
                                                    ),
                                                  ),
                                                  ListTile(
                                                    contentPadding:
                                                        const EdgeInsets
                                                            .symmetric(
                                                      vertical: 5,
                                                      horizontal: 0,
                                                    ),
                                                    onTap: () {},
                                                    visualDensity:
                                                        VisualDensity.compact,
                                                    leading: CircleAvatar(
                                                      backgroundColor:
                                                          Color(0xFFC9E5FF),
                                                      foregroundColor:
                                                          Color(0XFF6697c1),
                                                      child: Icon(Icons
                                                          .emoji_transportation),
                                                    ),
                                                    title: Text(
                                                      "Em trânsito para Unidade de Distribuição - RIO DE JANEIRO/RJ",
                                                      style: TextStyle(
                                                          fontWeight:
                                                              FontWeight.w500),
                                                    ),
                                                    subtitle: Text(
                                                      "Unidade de Tratamento - RIO DE JANEIRO/RJ Objeto encaminhado",
                                                      style: TextStyle(
                                                          fontSize: 12),
                                                    ),
                                                    trailing: Text(
                                                      "há 6 dias",
                                                      style: TextStyle(
                                                          fontSize: 12),
                                                    ),
                                                  )
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ]),
                              ),
                            ),
                          );
                        },
                        anchors: [0, 0.5, 1],
                      );
                    },
                    visualDensity: VisualDensity.compact,
                    leading: CircleAvatar(
                      backgroundColor: Color(0xFFC9E5FF),
                      foregroundColor: Color(0XFF6697c1),
                      child: Icon(Icons.music_note),
                    ),
                    title: Row(
                      children: [
                        Container(
                          width: 10,
                          height: 10,
                          decoration: BoxDecoration(
                            color: Colors.green,
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                        SizedBox(width: 5),
                        Text(
                          "Xiaomi Air Dots 2",
                          style: TextStyle(fontWeight: FontWeight.w500),
                        ),
                      ],
                    ),
                    subtitle: Text(
                      "Em trânsito para Unidade de Distribuição - SAO PAULO/SP",
                      style: TextStyle(fontSize: 12),
                    ),
                    trailing: Text(
                      "há 2 horas",
                      style: TextStyle(fontSize: 12),
                    ),
                  ),
                  ListTile(
                    contentPadding: const EdgeInsets.symmetric(
                      vertical: 10,
                      horizontal: 20,
                    ),
                    onTap: () {},
                    visualDensity: VisualDensity.compact,
                    leading: CircleAvatar(
                      backgroundColor: Color(0xFFC9E5FF),
                      foregroundColor: Color(0XFF6697c1),
                      child: Icon(Icons.gamepad),
                    ),
                    title: Text(
                      "Redragon Cobra M711",
                      style: TextStyle(fontWeight: FontWeight.w500),
                    ),
                    subtitle: Text(
                      "Objeto aguardando retirada no endereço indicado",
                      style: TextStyle(fontSize: 12),
                    ),
                    trailing: Text(
                      "há 6 dias",
                      style: TextStyle(fontSize: 12),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
