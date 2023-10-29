import 'package:flutter/material.dart';
import 'package:landing_page_tfatws/interface/widgets/grid_estrelas.widget.dart';

class InformacoesWidget extends StatelessWidget {
  const InformacoesWidget({super.key});

  @override
  Widget build(BuildContext context) {
    bool telaPequena = MediaQuery.of(context).size.width < 750;
    return Container(
      width: telaPequena ? null : MediaQuery.of(context).size.width / 2,
      margin: telaPequena ? const EdgeInsets.symmetric(horizontal: 20) : null,
      child: MediaQuery.of(context).size.width < 400
          ? Container(
              width: 200,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Row(
                    children: [
                      Icon(Icons.timer, color: Colors.white),
                      Text(" 51 min", style: TextStyle(color: Colors.white, fontSize: 20)),
                      Spacer(),
                      Text("2021", style: TextStyle(color: Colors.white, fontSize: 20)),
                    ],
                  ),
                  SizedBox(height: 20),
                  Transform.scale(
                    alignment: Alignment.topCenter,
                    scale: MediaQuery.of(context).size.width < 500 ? .8 : 1,
                    child: GridEstrelasWidget(),
                  ),
                ],
              ),
            )
          : Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Icon(Icons.timer, color: Colors.white),
                Text(" 51 min", style: TextStyle(color: Colors.white, fontSize: 20)),
                Spacer(),
                Transform.scale(
                  alignment: Alignment.topCenter,
                  scale: MediaQuery.of(context).size.width < 500 ? .8 : 1,
                  child: GridEstrelasWidget(),
                ),
                Spacer(),
                Text("2021", style: TextStyle(color: Colors.white, fontSize: 20)),
              ],
            ),
    );
  }
}
