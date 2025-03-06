import 'package:flutter/material.dart';

class ConteudoTituloWidget extends StatelessWidget {
  const ConteudoTituloWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.width < 750 ? null : 210,
      width: MediaQuery.of(context).size.width,
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: Column(
        children: [
          Text(
            "Está disponível agora!".toUpperCase(),
            style: const TextStyle(
              color: Colors.white,
              fontFamily: 'Poppins',
            ),
          ),
          const SizedBox(height: 30),
          Text(
            "O Falcão e o \nSoldado Invernal".toUpperCase(),
            style: TextStyle(
              color: Colors.white,
              fontSize: MediaQuery.of(context).size.height < 500 ? 38 : 48,
              fontWeight: FontWeight.w400,
              fontFamily: 'TiltWarp',
            ),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
