// ignore: avoid_web_libraries_in_flutter
import 'dart:html';

import 'package:brenoitalo/components/circle_buttom.dart';
import 'package:brenoitalo/components/circle_icon_buttom.dart';
import 'package:brenoitalo/utilities/colors_palette.dart';
import 'package:brenoitalo/utilities/urls.dart';
import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';
import 'package:seo_renderer/renderers/text_renderer/text_renderer.dart';
import 'package:url_launcher/url_launcher.dart';

// TextRenderer(
//   element: ParagraphElement(),
//   text: const Text(data),
// )

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final TextEditingController _nameController = TextEditingController(text: '');
  final TextEditingController _emailController =
      TextEditingController(text: '');
  final TextEditingController _msgController = TextEditingController(text: '');
  // ignore: always_declare_return_types
  _validarCampos() async {
    // ignore: prefer_final_locals
    final String nome = _nameController.text;
    // ignore: prefer_final_locals
    final String email = _emailController.text;
    // ignore: prefer_final_locals
    final String msg = _msgController.text;

    if (email.isEmpty && nome.isEmpty) {
      showDialog(
        context: context,
        builder: (ctx) => const AlertDialog(
          title: Text("Nome e E-mail estão vazios"),
        ),
      );
    } else if (email.isEmpty && nome.isNotEmpty) {
      showDialog(
        context: context,
        builder: (ctx) => const AlertDialog(
          title: Text("O campo de email deve ser preenchido"),
        ),
      );
    } else if (nome.isEmpty && email.isNotEmpty) {
      showDialog(
        context: context,
        builder: (ctx) => const AlertDialog(
          title: Text("O campo nome dever ser preenchido"),
        ),
      );
    } else if (nome.length < 2) {
      showDialog(
        context: context,
        builder: (ctx) => const AlertDialog(
          title: Text("Nome muito curto"),
        ),
      );
    } else if (!email.contains('@') && !email.contains('.')) {
      showDialog(
        context: context,
        builder: (ctx) => const AlertDialog(
          title: Text("Você digitou o e-mail errado!"),
        ),
      );
    } else {
      final gmailUrl = "mailto:contato@brenoitalo.com?Subject=ORÇAMENTO&Body=" +
          // ignore: unnecessary_string_interpolations
          "Olá Breno!%0AMeu nome é $nome!%0A$email é o meu email principal.%0A$msg";
      // "mailto:contato@brenoitalo.com?Subject=or%E7amento&Body=Ol%E1%20Breno%21%20Eu%20gostaria%20de%20solicitar%20um%20or%E7amento%20de%20um%20de%20seus%20servi%E7os%21";

      if (await canLaunch(gmailUrl)) {
        await launch(gmailUrl);
      } else {
        throw 'Não foi possível enviar email para $gmailUrl';
      }
      //todo: Enviar email
    }
    // return 'mailto: contato@brenoitalo.com';
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorsPalette.brenoBackBlue,
      body: CustomScrollView(
        slivers: [
          //? AppBar
          SliverAppBar(
            foregroundColor: ColorsPalette.brenoBackBlue,
            floating: true,
            leading: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Image.asset(
                "assets/images/logo.png",
                // color: ColorsPalette.brenoPink,
              ),
            ),
            backgroundColor: ColorsPalette.brenoBackBlue,
            title: TextRenderer(
              //! seo element
              element: ParagraphElement(),
              text: const Text(
                "Breno Italo",
                style: TextStyle(
                  color: Colors.white70,
                  // fontWeight: FontWeight.bold,
                  fontSize: 22,
                  letterSpacing: -1.5,
                ),
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
          //? Seção designer
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.all(32.0),
              child: Center(
                child: Wrap(
                  alignment: WrapAlignment.center,
                  children: [
                    //!Imagem na seção
                    SizedBox(
                      // color: Colors.grey, //*Alterar a cor do fundo
                      height: 355,
                      width: 550,
                      child: Image.asset('assets/images/design01.png'),
                    ),
                    //!Testo na seção
                    SizedBox(
                      height: 355,
                      width: 350,
                      // color: Colors.blueGrey, //*Alterar a cor do fundo
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SizedBox(
                            child: Center(
                              child: TextRenderer(
                                element: ParagraphElement(),
                                text: const Text(
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
                          ),
                          SizedBox(
                            width: 350,
                            child: Center(
                              child: TextRenderer(
                                element: ParagraphElement(),
                                text: const Text(
                                  'Criação de projetos gráficos. Folders, cartão de visita, logos, folhetos, flyers, catálogos, revistas, além de gerenciamento de mídias sociais.',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    color: Colors.white70,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          CircleButtom(
                            buttomLength: 150,
                            onPressed: () {
                              whatsapp(); //*Acessa o whatsapp
                            },
                            buttomText: "EU QUERO",
                          ),
                        ],
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 64),
                      child: Divider(
                        thickness: 5,
                        color: Colors.white10,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          //? Seção desenvolvedor
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.all(32.0),
              child: Center(
                child: Wrap(
                  alignment: WrapAlignment.center,
                  children: [
                    SizedBox(
                      //!Centralizar o conteúdo verticalmente
                      height: 355,
                      width: 350,
                      // color: Colors.blueGrey, //*Alterar a cor do fundo
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SizedBox(
                            child: Center(
                              child: TextRenderer(
                                element: ParagraphElement(),
                                text: const Text(
                                  'DESENVOLDOR\nWEB E MOBILE',
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
                          ),
                          SizedBox(
                            width: 350,
                            child: Center(
                                child: TextRenderer(
                              element: ParagraphElement(),
                              text: const Text(
                                'Sites portifólio, sites personalizados de acordo com a necessidade do seu negócio, catálogos virtuais com domínio personalizado e aplicativos em geral.',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: Colors.white70,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20,
                                ),
                              ),
                            )),
                          ),
                          CircleButtom(
                            buttomLength: 150,
                            onPressed: () {
                              whatsapp(); //*Acessa o whatsapp
                            },
                            buttomText: "EU QUERO",
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      // color: Colors.grey, //*Alterar a cor do fundo
                      height: 355,
                      width: 550,
                      child: Image.asset(
                        'assets/images/dev.png',
                      ), //!Programming image
                    ),
                    const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 64),
                      //!Descomentar o código a baixo quando for inserir mais conteúdo a baixo.
                      child: Divider(
                        thickness: 5,
                        color: Colors.white10,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          //? Seção email
          SliverToBoxAdapter(
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.only(
                  top: 8,
                  left: 32,
                  bottom: 32,
                  right: 32,
                ),
                child: Center(
                  child: Card(
                    color: const Color(0xFF332251),
                    elevation: 8,
                    shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(15)),
                    ),
                    child: SizedBox(
                      width: 500,
                      child: Padding(
                        padding: const EdgeInsets.all(32),
                        child: Column(
                          children: [
                            //? Imagem do formulário
                            Image.asset(
                              'assets/images/logo.png',
                              scale: 15,
                            ),
                            const SizedBox(height: 16),
                            //? Name form
                            TextField(
                              controller: _nameController,
                              style: const TextStyle(color: Colors.white70),
                              cursorColor: Colors.pink,
                              decoration: const InputDecoration(
                                labelText: 'Nome',
                                labelStyle: TextStyle(color: Colors.white70),
                                hintText: 'Insira o seu nome',
                                hintStyle: TextStyle(color: Colors.white38),
                                focusedBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Colors.purple,
                                    width: 2,
                                  ),
                                ),
                                enabledBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Colors.white70,
                                  ),
                                ),
                                suffixIcon: Icon(
                                  LineIcons.identificationCardAlt,
                                  color: Colors.white70,
                                ),
                              ),
                            ),
                            const SizedBox(height: 16),
                            //? E-mail form
                            TextField(
                              controller: _emailController,
                              cursorColor: Colors.pink,
                              style: const TextStyle(color: Colors.white70),
                              keyboardType: TextInputType.emailAddress,
                              decoration: const InputDecoration(
                                labelText: 'E-mail',
                                labelStyle: TextStyle(color: Colors.white70),
                                hintText: 'Insira o seu e-mail',
                                hintStyle: TextStyle(color: Colors.white38),
                                focusedBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Colors.purple,
                                    width: 2,
                                  ),
                                ),
                                enabledBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Colors.white70,
                                  ),
                                ),
                                suffixIcon: Icon(
                                  Icons.mail_outline_outlined,
                                  color: Colors.white70,
                                ),
                              ),
                            ),
                            const SizedBox(height: 16),
                            //? Message form
                            TextField(
                              controller: _msgController,
                              cursorColor: Colors.pink,
                              style: const TextStyle(color: Colors.white70),
                              keyboardType: TextInputType.text,
                              decoration: const InputDecoration(
                                labelText: 'Descrição',
                                labelStyle: TextStyle(color: Colors.white70),
                                hintText: 'Descreva o que você precisa',
                                hintStyle: TextStyle(color: Colors.white38),
                                focusedBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Colors.purple,
                                    width: 2,
                                  ),
                                ),
                                suffixIcon: Icon(
                                  Icons.message_outlined,
                                  color: Colors.white70,
                                ),
                                enabledBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Colors.white70,
                                  ),
                                ),
                              ),
                            ),
                            const SizedBox(height: 16),
                            CircleButtom(
                              buttomLength: 150,
                              onPressed: () {
                                _validarCampos();
                                // launch('srbrenoitalo.com');
                              },
                              buttomText: 'ENVIAR',
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
          //? Rodapé
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
          //* final do rodapé
        ],
      ),
    );
  }
}
