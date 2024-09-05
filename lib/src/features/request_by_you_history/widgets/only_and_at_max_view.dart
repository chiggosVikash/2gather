import 'package:backmate/src/core/utils/size_utils.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class OnlyAndAtMaxView extends StatelessWidget {
  const OnlyAndAtMaxView({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          width: context.width * .4,
          child: Row(
            children: [
              Icon(
                Icons.person_2,
                size: context.height * .02,
                color: context.colorScheme.primary,
              ),
              SizedBox(
                width: context.width * .02,
              ),
              Text(
                "Only:Girls",
                style: context.textTheme.bodyMedium!.merge(
                    GoogleFonts.inter(color: context.colorScheme.outline)),
              )
            ],
          ),
        ),
        SizedBox(
          width: context.width * .4,
          child: Row(
            children: [
              Icon(
                Icons.groups_outlined,
                size: context.height * .02,
                color: context.colorScheme.primary,
              ),
              SizedBox(
                width: context.width * .02,
              ),
              Text(
                "At Max: 2",
                style: context.textTheme.bodyMedium!.merge(
                    GoogleFonts.inter(color: context.colorScheme.outline)),
              )
            ],
          ),
        ),
      ],
    );
  }
}
