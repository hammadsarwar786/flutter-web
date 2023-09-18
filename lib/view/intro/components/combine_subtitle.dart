import 'package:flutter/material.dart';
import 'package:flutter_portfolio/view/intro/components/subtitle_text.dart';
import 'package:flutter/foundation.dart' show kIsWeb;
import '../../../view model/responsive.dart';

class CombineSubtitleText extends StatelessWidget {
  const CombineSubtitleText({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        const Responsive(
          desktop: AnimatedSubtitleText(start: 30, end: 40, text: 'IT '),
          largeMobile: AnimatedSubtitleText(start: 30, end: 25, text: 'IT '),
          mobile: AnimatedSubtitleText(start: 25, end: 20, text: 'IT '),
          tablet: AnimatedSubtitleText(start: 40, end: 30, text: 'IT '),
        ),
        (kIsWeb && Responsive.isLargeMobile(context)
            ? const Responsive(
                desktop: AnimatedSubtitleText(start: 30, end: 40, text: 'Solutions ', gradient: true),
                largeMobile: AnimatedSubtitleText(start: 30, end: 25, text: 'Solutions ', gradient: true),
                mobile: AnimatedSubtitleText(start: 25, end: 20, text: 'Solutions ', gradient: true),
                tablet: AnimatedSubtitleText(start: 40, end: 30, text: 'Solutions ', gradient: true),
              )
            : ShaderMask(
                shaderCallback: (bounds) {
                  return const LinearGradient(colors: [
                    Color.fromARGB(255, 255, 0, 0),
                    Colors.pink,
                  ]).createShader(bounds);
                },
                child: const Responsive(
                  desktop: AnimatedSubtitleText(start: 30, end: 40, text: 'Solutions ', gradient: false),
                  largeMobile: AnimatedSubtitleText(start: 30, end: 25, text: 'Solutions ', gradient: false),
                  mobile: AnimatedSubtitleText(start: 25, end: 20, text: 'Solutions ', gradient: true),
                  tablet: AnimatedSubtitleText(start: 40, end: 30, text: 'Solutions ', gradient: false),
                ),
              ))
      ],
    );
  }
}
