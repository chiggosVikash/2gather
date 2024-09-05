import 'package:backmate/src/core/utils/size_utils.dart';
import 'package:backmate/src/features/request_by_you_history/widgets/only_and_at_max_view.dart';
import 'package:backmate/src/features/request_by_you_history/widgets/profile_icon.dart';
import 'package:backmate/src/shared/widgets/date_and_time_view.dart';
import 'package:flutter/material.dart';

class RequestCard extends StatelessWidget {
  const RequestCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: context.width * .03),
        child: Column(
          children: [
            SizedBox(
              height: context.height * .03,
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
            SizedBox(
              height: context.height * .01,
            ),
            const DateAndTimeView(),
            SizedBox(
              height: context.height * .01,
            ),
            const OnlyAndAtMaxView(),
            Row(
              children: [
                SizedBox(
                  width: context.height * 0.1,
                  height: context.height * 0.03,
                  child: Stack(
                    children: List.generate(4, (index) {
                      if (index == 3) {
                        return Positioned(
                          left: index * context.height * 0.025,
                          child: Text(
                            '+3',
                            style: TextStyle(
                              color: context.colorScheme.primary,
                              fontSize: context.height * 0.018,
                            ),
                          ),
                        );
                      }
                      return ProfileIcon(
                        leftPos: index * context.height * 0.02,
                      );
                    }),
                  ),
                ),
                TextButton.icon(
                    onPressed: () {},
                    icon: Text('View',
                        style: TextStyle(
                          color: context.colorScheme.primary,
                          fontWeight: FontWeight.bold,
                        )),
                    label: const Icon(Icons.arrow_forward_ios_outlined))
              ],
            ),
          ],
        ),
      ),
    );
  }
}
