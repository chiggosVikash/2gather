import 'package:backmate/src/core/utils/size_utils.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DateAndTimeView extends StatelessWidget {
  const DateAndTimeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          width: context.width * .4,
          child: Row(
            children: [
              Icon(
                Icons.date_range,
                size: context.height * .02,
                color: context.colorScheme.primary,
              ),
              SizedBox(
                width: context.width * .02,
              ),
              Text(
                "12 Aug,2024",
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
                Icons.timelapse,
                size: context.height * .02,
                color: context.colorScheme.primary,
              ),
              SizedBox(
                width: context.width * .02,
              ),
              Text(
                "08:00 AM",
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
