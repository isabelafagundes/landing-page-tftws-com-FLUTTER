import 'package:flutter/material.dart';
import 'package:landing_page_tfatws/interface/widgets/card_poster.widget.dart';
import 'package:landing_page_tfatws/interface/widgets/conteudo_home_mobile.widget.dart';
import 'package:landing_page_tfatws/interface/widgets/conteudo_titulo.widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    double altura = MediaQuery.of(context).size.height;
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
                  height: altura,
                  width: MediaQuery.of(context).size.width,
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      Positioned(
                        top: 0,
                        child: SizedBox(
                          height: altura <= 730 ? altura * .86 : altura * .8,
                          child: const Column(
                            children: [
                              SizedBox(height: 30),
                              ConteudoTituloWidget(),
                              Spacer(),
                              Column(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  CardPosterWidget(),
                                ],
                              ),
                            ],
                          ),
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
