import 'package:brenoitalo/components/circle_buttom.dart';
import 'package:brenoitalo/utilities/colors_palette.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            floating: true,
            leading: Expanded(
              child: Image.asset(
                'assets/images/logo.png',
                scale: 15,
              ),
            ),
            backgroundColor: Colors.grey[100],
            title: const Text(
              "Breno Italo",
              style: TextStyle(
                color: ColorsPalette.brenoText01,
                fontWeight: FontWeight.bold,
                fontSize: 28,
                letterSpacing: -1.5,
              ),
            ),
            actions: [
              //?App bar buttom
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
                      height: 255,
                      width: 350,
                      // color: Colors.blueGrey,
                      child: Column(
                        children: [
                          const SizedBox(
                            width: 350,
                            child: Text(
                              'Desenvolvedor Web e Mobile',
                              style: TextStyle(
                                color: ColorsPalette.brenoText01,
                                fontWeight: FontWeight.bold,
                                fontSize: 40,
                              ),
                            ),
                          ),
                          const SizedBox(
                            width: 350,
                            child: Text(
                              'Tenha um site para chamar de seu! Sites e aplicativos responsivos automatizados e baseados no seu negócio.',
                              style: TextStyle(
                                color: Colors.black54,
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
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
                    SizedBox(
                      // color: Colors.grey,
                      height: 255,
                      width: 350,
                      child: SvgPicture.asset('assets/svg/programming.svg'),
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
