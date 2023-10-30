import 'package:flutter/material.dart';
import 'package:landing_page_tfatws/interface/widgets/botoes.widget.dart';
import 'package:landing_page_tfatws/interface/widgets/sinopse.widget.dart';

class CardPosterMobileWidget extends StatelessWidget {
  const CardPosterMobileWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        margin: EdgeInsets.only(top: 20),
        padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
        width: MediaQuery.of(context).size.width,
        decoration: const BoxDecoration(
          color: Color(0xff1A191F),
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(32),
            topRight: Radius.circular(32),
          ),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const BotoesWidget(),
            Container(color: Colors.white.withOpacity(.5), height: .09),
            const SizedBox(height: 20),
            const SinopseWidget(),
          ],
        ),
      ),
    );
  }
}
