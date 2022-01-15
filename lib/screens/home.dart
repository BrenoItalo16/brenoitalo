import 'package:brenoitalo/components/circle_buttom.dart';
import 'package:brenoitalo/components/circle_icon_buttom.dart';
import 'package:brenoitalo/utilities/colors_palette.dart';
import 'package:brenoitalo/utilities/urls.dart';
import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorsPalette.brenoBackBlue,
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            foregroundColor: Colors.transparent,
            shadowColor: Colors.transparent,
            floating: true,
            leading: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Image.asset(
                "assets/images/logo.png",
                // color: ColorsPalette.brenoPink,
              ),
            ),
            backgroundColor: Colors.transparent,
            title: const Text(
              "Breno Italo",
              style: TextStyle(
                color: Colors.white70,
                // fontWeight: FontWeight.bold,
                fontSize: 22,
                letterSpacing: -1.5,
              ),
            ),
            actions: [
              //?App bar buttom
              // TextButton(
              //   onPressed: () {
              //     whatsapp(); //*Acessa o whatsapp
              //   },
              //   child: const Text(
              //     'DESENVOLVIMENTO',
              //     style: TextStyle(
              //       color: Colors.white60,
              //       fontWeight: FontWeight.bold,
              //     ),
              //   ),
              // ),
              CircleButtom(
                buttomLength: 115,
                buttomText: "ORÇAMENTO",
                onPressed: () async {
                  whatsapp(); //*Acessa o whatsapp
                },
              ),
            ],
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.all(32.0),
              child: Center(
                child: Wrap(
                  alignment: WrapAlignment.center,
                  children: [
                    SizedBox(
                      // color: Colors.grey, //*Alterar a cor do fundo
                      height: 355,
                      width: 550,
                      child: Image.asset('assets/images/design01.png'),
                    ),
                    SizedBox(
                      //!Centralizar o conteúdo verticalmente
                      height: 355,
                      width: 350,
                      // color: Colors.blueGrey, //*Alterar a cor do fundo
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const SizedBox(
                            child: Center(
                              child: Text(
                                'DESIGN\nGRÁFICO',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 40,
                                  fontFamily: 'Righteous-Regular',
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(
                            width: 350,
                            child: Center(
                              child: Text(
                                'Criação de projetos gráficos. Folders, cartão de visita, logos, folhetos, flyers, catálogos, revistas, mídias sociais.',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: Colors.white70,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20,
                                ),
                              ),
                            ),
                          ),
                          CircleButtom(
                            buttomLength: 100,
                            onPressed: () {
                              whatsapp(); //*Acessa o whatsapp
                            },
                            buttomText: "EU QUERO",
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          //todo: Criação de rodapé
          SliverToBoxAdapter(
            child: Container(
              color: Colors.black45,
              child: Column(
                children: [
                  const SizedBox(height: 20),
                  Container(
                    height: 50,
                    width: MediaQuery.of(context).size.width,
                    decoration: const BoxDecoration(
                      gradient: ColorsPalette.brenoDegrade,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          'assets/images/logo.png',
                          scale: 25,
                        ),
                        const Text(
                          " Breno Italo",
                          style: TextStyle(color: Colors.white54),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    height: 100,
                    color: Colors.black45,
                    width: MediaQuery.of(context).size.width,
                    child: Column(
                      children: [
                        const SizedBox(width: 10),
                        const Text(
                          '© 2022 Breno Italo, Av Luiz Gonzaga, 983, Centro, Ipanguaçu, RN',
                          style: TextStyle(color: Colors.white54, fontSize: 10),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: const [
                            CircleIconButtom(
                              buttonLength: 30,
                              iconButton: LineIcons.whatSApp,
                              onPressed: whatsapp,
                            ),
                            CircleIconButtom(
                              buttonLength: 30,
                              iconButton: LineIcons.instagram,
                              onPressed: instagram,
                            ),
                            CircleIconButtom(
                              buttonLength: 30,
                              iconButton: LineIcons.twitter,
                              onPressed: twitter,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          )
          //todo: final do rodapé
        ],
      ),
    );
  }
}
