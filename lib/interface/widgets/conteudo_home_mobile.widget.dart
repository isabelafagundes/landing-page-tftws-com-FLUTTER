import 'package:flutter/material.dart';
import 'package:landing_page_tfatws/interface/widgets/card_poster_mobile.widget.dart';
import 'package:landing_page_tfatws/interface/widgets/conteudo_titulo.widget.dart';
import 'package:landing_page_tfatws/interface/widgets/informacoes.widget.dart';

class ConteudoHomeMobileWidget extends StatelessWidget {
  const ConteudoHomeMobileWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height,
      child: Stack(
        alignment: Alignment.center,
        children: [
          Positioned(top: 20, child: ConteudoTituloWidget()),
          Positioned(
            bottom: 0,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                InformacoesWidget(),
                CardPosterMobileWidget(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
