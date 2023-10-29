import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class BtnAssitaAgoraWidget extends StatelessWidget {
  const BtnAssitaAgoraWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () async {
        await launchUrl(
          Uri.parse("https://www.disneyplus.com/pt-br/series/the-falcon-and-the-winter-soldier/4gglDBMx8icA"),
          mode: LaunchMode.externalApplication,
        );
      },
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.blue,
        padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 20),
      ),
      child: Text(
        "Assista agora".toUpperCase(),
        style: TextStyle(color: Colors.white),
      ),
    );
  }
}
