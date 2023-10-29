import 'package:flutter/material.dart';
import 'package:landing_page_tfatws/interface/widgets/btn_assista_agora.widget.dart';
import 'package:landing_page_tfatws/interface/widgets/btn_trailer.widget.dart';

class BotoesWidget extends StatelessWidget {
  const BotoesWidget({super.key});

  @override
  Widget build(BuildContext context) {
    bool telaPequena = MediaQuery.of(context).size.width < 750;
    return Container(
      padding: telaPequena ? EdgeInsets.symmetric(vertical: 20, horizontal: 20) : null,
      width: telaPequena ? null : MediaQuery.of(context).size.width / 2,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const BtnAssitaAgoraWidget(),
          telaPequena ? const Spacer() : const SizedBox(width: 30),
          const BtnTrailerWidget(),
        ],
      ),
    );
  }
}
