import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class BtnTrailerWidget extends StatelessWidget {
  const BtnTrailerWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () async {
        await launchUrl(
          Uri.parse("https://youtu.be/ZHaokMTWgdY?si=MJPuouQeiX43im8-"),
          mode: LaunchMode.externalApplication,
        );
      },
      style: ElevatedButton.styleFrom(
        backgroundColor: const Color(0xff1A191F),
        side: const BorderSide(width: 1, color: Colors.white),
        padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 20),
      ),
      child: Text(
        "trailer".toUpperCase(),
        style: const TextStyle(color: Colors.white),
      ),
    );
  }
}
