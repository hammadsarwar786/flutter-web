import 'package:flutter/material.dart';
import 'package:flutter_portfolio/res/constants.dart';

class AnimatedLoadingText extends StatelessWidget {
  const AnimatedLoadingText({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: defaultPadding * 5,
      child: TweenAnimationBuilder(
        duration: const Duration(seconds: 2),
        builder: (context, value, child) => Column(
          children: [
            LinearProgressIndicator(
              backgroundColor: Colors.black,
              color: Color.fromARGB(255, 255, 0, 0),
              value: value,
            ),
            const SizedBox(
              height: defaultPadding / 2,
            ),
            Text(
              '${(value * 100).toInt()}%',
              style: const TextStyle(color: Colors.white, fontWeight: FontWeight.bold, shadows: [
                Shadow(color: Color.fromARGB(255, 255, 255, 255), blurRadius: 10, offset: Offset(2, 2)),
                Shadow(color: Color.fromARGB(255, 255, 0, 0), blurRadius: 10, offset: Offset(-2, -2)),
              ]),
            )
          ],
        ),
        tween: Tween(begin: 0.0, end: 1.0),
      ),
    );
  }
}
