import 'package:flutter/material.dart';
import 'package:landing_page_tfatws/interface/widgets/btn_assista_agora.widget.dart';
import 'package:landing_page_tfatws/interface/widgets/btn_trailer.widget.dart';
import 'package:landing_page_tfatws/interface/widgets/card_poster.widget.dart';
import 'package:landing_page_tfatws/interface/widgets/card_poster_mobile.widget.dart';
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
        decoration: BoxDecoration(
          color: Colors.black,
          image: DecorationImage(
            image: MediaQuery.of(context).size.width < 750
                ? const AssetImage("assets/img/poster.jfif")
                : const AssetImage("assets/img/background2.jpg"),
            fit: BoxFit.cover,
            colorFilter: ColorFilter.mode(
              Colors.black.withOpacity(.15),
              BlendMode.dstATop,
            ),
          ),
        ),
        child: SingleChildScrollView(
          child: SizedBox(
            height: MediaQuery.of(context).size.height,
            child: Flex(
              direction: Axis.vertical,
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Column(
                  children: [
                    const SizedBox(height: 50),
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
                const Spacer(),
                MediaQuery.of(context).size.width < 750
                    ? const Column(
                        mainAxisSize: MainAxisSize.min,
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
                          SizedBox(height: 20),
                          CardPosterWidget(),
                          SizedBox(height: 80),
                        ],
                      ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
