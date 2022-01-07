import 'package:brenoitalo/components/circle_buttom.dart';
import 'package:brenoitalo/utilities/colors_palette.dart';
import 'package:flutter/material.dart';

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
              TextButton(
                onPressed: () {},
                child: const Text(
                  'DESENVOLVIMENTO',
                  style: TextStyle(
                    color: Colors.white60,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              CircleButtom(
                buttomLength: 115,
                buttomText: "ORÇAMENTO",
                onPressed: () {
                  debugPrint('Botão de orçamento funcionando');
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
                            onPressed: () {},
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
        ],
      ),
    );
  }
}
