import 'package:flutter/material.dart';
import 'package:landing_page_tfatws/interface/widgets/btn_assista_agora.widget.dart';
import 'package:landing_page_tfatws/interface/widgets/btn_trailer.widget.dart';
import 'package:landing_page_tfatws/interface/widgets/card_poster.widget.dart';
import 'package:landing_page_tfatws/interface/widgets/card_poster_mobile.widget.dart';
import 'package:landing_page_tfatws/interface/widgets/conteudo_home_mobile.widget.dart';
import 'package:landing_page_tfatws/interface/widgets/conteudo_titulo.widget.dart';
import 'package:landing_page_tfatws/interface/widgets/grid_estrelas.widget.dart';
import 'package:landing_page_tfatws/interface/widgets/informacoes.widget.dart';
import 'package:landing_page_tfatws/interface/widgets/sinopse.widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(
          color: Colors.black,
          image: DecorationImage(
            image: MediaQuery.of(context).size.width < 750
                ? const AssetImage("assets/img/poster.jfif")
                : const AssetImage("assets/img/background2.jpg"),
            fit: BoxFit.cover,
            colorFilter: ColorFilter.mode(
              Colors.black.withOpacity(.2),
              BlendMode.dstATop,
            ),
          ),
        ),
        child: MediaQuery.of(context).size.width < 750
            ? const ConteudoHomeMobileWidget()
            : SingleChildScrollView(
                child: SizedBox(
                  height: 700,
                  width: MediaQuery.of(context).size.width,
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      Positioned(
                        top: 0,
                        child: Column(
                          children: [
                            const SizedBox(height: 50),
                            ConteudoTituloWidget(),
                            if (MediaQuery.of(context).size.width < 750) Spacer(),
                            MediaQuery.of(context).size.width < 750
                                ? const Column(
                                    mainAxisSize: MainAxisSize.min,
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    children: [
                                      SizedBox(height: 20),
                                      InformacoesWidget(),
                                      SizedBox(height: 20),
                                      CardPosterMobileWidget(),
                                    ],
                                  )
                                : const Column(
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      SizedBox(height: 80),
                                      CardPosterWidget(),
                                    ],
                                  ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
      ),
    );
  }
}
