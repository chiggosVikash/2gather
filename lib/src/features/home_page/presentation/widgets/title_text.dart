import '/src/extension/context_extension.dart';
import 'package:flutter/cupertino.dart';
import 'package:google_fonts/google_fonts.dart';

class TitleText extends StatelessWidget {
  final String title;
  const TitleText({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: GoogleFonts.inter(
          color: context.colorScheme.outline,
          fontSize:
              ((context.height + context.width) * context.aspectRatio) * .028),
    );
  }
}
