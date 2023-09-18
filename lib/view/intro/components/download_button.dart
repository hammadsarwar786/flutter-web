import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../res/constants.dart';

class DownloadButton extends StatelessWidget {
  const DownloadButton({super.key});
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        launchUrl(Uri.parse('https://hikalagency.ae/'));
      },
      child: Container(
        alignment: Alignment.center,
        padding: const EdgeInsets.symmetric(vertical: defaultPadding / 1.5, horizontal: defaultPadding * 2),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          boxShadow: const [
            BoxShadow(color: Colors.blue, offset: Offset(0, -1), blurRadius: 5),
            BoxShadow(color: Colors.red, offset: Offset(0, 1), blurRadius: 5),
          ],
          gradient: LinearGradient(begin: Alignment.topLeft, end: Alignment.bottomRight, colors: [
            Color.fromARGB(255, 255, 0, 0),
            Color.fromARGB(255, 233, 30, 30),
          ]),
        ),
        child: Row(
          children: [
            Text(
              'Get Start',
              style: Theme.of(context).textTheme.labelSmall!.copyWith(color: Colors.white, letterSpacing: 1.2, fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              width: defaultPadding / 3,
            ),
            const Icon(
              Icons.arrow_forward_ios_rounded,
              color: Colors.white70,
              size: 15,
            )
          ],
        ),
      ),
    );
  }
}
