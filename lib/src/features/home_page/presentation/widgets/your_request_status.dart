import 'package:backmate/src/features/home_page/presentation/widgets/stacked_circle_person.dart';
import 'package:google_fonts/google_fonts.dart';

import '/src/extension/context_extension.dart';
import '/src/features/home_page/presentation/widgets/title_text.dart';
import 'package:flutter/material.dart';

class YourRequestStatus extends StatelessWidget {
  const YourRequestStatus({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const TitleText(title: "Your Request Status"),
        SizedBox(
          height: context.height * .01,
        ),
        Container(
            margin: EdgeInsets.symmetric(vertical: context.height * .01),
            decoration: BoxDecoration(
              color: context.colorScheme.onPrimary,
              borderRadius: BorderRadius.circular(10),
            ),
            padding: EdgeInsets.symmetric(
                horizontal: context.width * .03,
                vertical: context.height * .01),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Row(
                children: [
                  Icon(
                    Icons.location_city,
                    size: context.height * .02,
                    color: context.colorScheme.primary,
                  ),
                  SizedBox(
                    width: context.width * .02,
                  ),
                  Text(
                    "Taj Hotel",
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                      color: context.colorScheme.surfaceTint,
                      fontWeight: FontWeight.bold,
                      fontSize: ((context.height + context.width) *
                              context.aspectRatio) *
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
                        Text("12 Aug,2024",
                            style: GoogleFonts.inter(
                              color: context.colorScheme.outline,
                            ))
                      ],
                    ),
                  ),
                  SizedBox(
                    width: context.width * .4,
                    child: Row(
                      children: [
                        Icon(
                          Icons.access_time,
                          size: context.height * .02,
                          color: context.colorScheme.primary,
                        ),
                        SizedBox(
                          width: context.width * .02,
                        ),
                        Text("08:00 PM",
                            style: GoogleFonts.inter(
                              color: context.colorScheme.outline,
                            ))
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: context.height * .01,
              ),
              Row(children: [
                Icon(
                  Icons.location_on_outlined,
                  size: context.height * .02,
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
              ]),
              SizedBox(
                height: context.height * .01,
              ),
              Row(
                children: [
                  const StackedCirclePerson(),
                  Text(
                    "+ 4",
                    style: GoogleFonts.inter(
                      color: context.colorScheme.tertiary,
                    ),
                  )
                ],
              )
            ]))
      ],
    );
  }
}
