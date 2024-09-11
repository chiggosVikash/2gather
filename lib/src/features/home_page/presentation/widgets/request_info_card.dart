import 'package:backmate/src/extension/context_extension.dart';
import 'package:backmate/src/shared/widgets/date_and_time_view.dart';
import 'package:flutter/material.dart';

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
          const DateAndTimeView(),
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
