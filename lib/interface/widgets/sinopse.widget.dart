import 'package:flutter/material.dart';

class SinopseWidget extends StatelessWidget {
  const SinopseWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    bool telaPequena = MediaQuery.of(context).size.width < 750;
    return SizedBox(
      width: telaPequena ? null : MediaQuery.of(context).size.width / 2,
      child: const Text(
        "Na série do Disney+ Falcão e o Soldado Invernal, após receber o manto do Capitão América em Vingadores: Ultimato, Sam Wilson/Falcão (Anthony Mackie) luta para assumir o posto do herói. Ele se junta, então, a Bucky Barnes/Soldado Invernal (Sebastian Stan), embarcando em uma aventura mundial que vai colocar à prova as habilidades dos dois.",
        style: TextStyle(
          fontSize: 14,
          color: Colors.white,
          fontWeight: FontWeight.w400,
          fontFamily: 'Poppins',
          height: 1.5,
        ),
        textAlign: TextAlign.justify,
      ),
    );
  }
}
