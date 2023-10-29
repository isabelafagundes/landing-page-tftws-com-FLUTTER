import 'package:flutter/material.dart';
import 'package:landing_page_tfatws/interface/widgets/botoes.widget.dart';
import 'package:landing_page_tfatws/interface/widgets/btn_assista_agora.widget.dart';
import 'package:landing_page_tfatws/interface/widgets/btn_trailer.widget.dart';
import 'package:landing_page_tfatws/interface/widgets/grid_estrelas.widget.dart';
import 'package:landing_page_tfatws/interface/widgets/informacoes.widget.dart';
import 'package:landing_page_tfatws/interface/widgets/sinopse.widget.dart';

class CardPosterWidget extends StatelessWidget {
  const CardPosterWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(
          "assets/img/poster.jpg",
          height: 250,
          width: 200,
        ),
        SizedBox(width: 50),
        Column(
          children: [
            SinopseWidget(),
            SizedBox(height: 20),
            InformacoesWidget(),
            const SizedBox(height: 40),
            BotoesWidget(),
          ],
        ),
      ],
    );
  }
}
