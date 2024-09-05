import 'package:backmate/src/extension/context_extension.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class RequestInfoCard extends StatelessWidget {
  const RequestInfoCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: context.height * .01),
      decoration: BoxDecoration(
        color: context.colorScheme.onPrimary,
        borderRadius: BorderRadius.circular(10),
      ),
      padding: EdgeInsets.symmetric(
          horizontal: context.width * .03, vertical: context.height * .01),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Icon(
                Icons.person_2_outlined,
                size: context.height * .02,
                color: context.colorScheme.primary,
              ),
              SizedBox(
                width: context.width * .02,
              ),
              Text(
                "Vegas Great",
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(
                  color: context.colorScheme.surfaceTint,
                  fontWeight: FontWeight.bold,
                  fontSize:
                      ((context.height + context.width) * context.aspectRatio) *
                          .028,
                ),
              )
            ],
          ),
          SizedBox(
            height: context.height * .01,
          ),
          Row(
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
                          GoogleFonts.inter(
                              color: context.colorScheme.outline)),
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
                          GoogleFonts.inter(
                              color: context.colorScheme.outline)),
                    )
                  ],
                ),
              ),
            ],
          ),
          SizedBox(
            height: context.height * .01,
          ),
          Row(
            children: [
              Icon(
                Icons.location_on_outlined,
                size: context.height * .02,
                color: context.colorScheme.primary,
              ),
              SizedBox(
                width: context.width * .02,
              ),
              Text(
                "XYZ Nagar Kurthoul Patna 804454",
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(
                  color: context.colorScheme.outline,
                ),
              )
            ],
          ),
          Align(
            alignment: Alignment.topRight,
            child: TextButton.icon(
                style:
                    TextButton.styleFrom(visualDensity: VisualDensity.compact),
                onPressed: () {},
                icon: const Text("View"),
                label: Icon(
                  Icons.arrow_forward_ios_rounded,
                  size: context.height * .018,
                )),
          )
        ],
      ),
    );
  }
}
