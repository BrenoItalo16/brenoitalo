import 'package:brenoitalo/utilities/colors_palette.dart';
import 'package:flutter/material.dart';

class CircleButtom extends StatelessWidget {
  final double buttomLength;
  final VoidCallback onPressed;
  final String buttomText;
  const CircleButtom({
    Key? key,
    required this.buttomLength,
    required this.onPressed,
    required this.buttomText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(8, 8, 8, 8),
      child: Center(
        child: ElevatedButton(
          onPressed: onPressed, //!Função onPressed
          style: ElevatedButton.styleFrom(
            padding: EdgeInsets.zero,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),
          ),
          child: Ink(
            decoration: BoxDecoration(
              //*Sombra
              // boxShadow: const <BoxShadow>[
              //   BoxShadow(
              //       color: Colors.red,
              //       blurRadius: 15.0,
              //       offset: Offset(0.0, 0.75))
              // ],
              //*Gradiente
              gradient: const LinearGradient(
                colors: [ColorsPalette.brenoOrange, ColorsPalette.brenoPink],
              ),
              borderRadius: BorderRadius.circular(20),
            ),
            child: Container(
              width: buttomLength, //!tamanho do butão
              height: 40,
              alignment: Alignment.center,
              child: Text(
                buttomText, //!Texto do botão
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 15,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
