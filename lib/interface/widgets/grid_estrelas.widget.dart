import 'package:flutter/material.dart';

class GridEstrelasWidget extends StatelessWidget {
  const GridEstrelasWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 35,
      width: 200,
      child: GridView.builder(
        shrinkWrap: true,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 5),
        itemBuilder: (BuildContext builder, int index) {
          return const Icon(
            Icons.star,
            color: Colors.amber,
            size: 35,
          );
        },
        itemCount: 5,
      ),
    );
  }
}
