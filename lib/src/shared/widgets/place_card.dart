import 'package:backmate/src/core/utils/size_utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class PlaceCard extends StatelessWidget {
  const PlaceCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: context.width * .5,
      width: context.width * .5,
      decoration: BoxDecoration(
        color: context.colorScheme.primaryContainer,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: LayoutBuilder(
          builder: (context, constraints) {
            return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.asset(
                  'assets/images/place.jpeg',
                  width: constraints.maxWidth,
                  height: constraints.maxHeight * .5,
                  fit: BoxFit.cover,
                ),
                Text(
                  'Place Name',
                  style: context.textTheme.titleMedium!
                      .copyWith(fontWeight: FontWeight.w700),
                ),
                Row(
                  children: [
                    Text(
                      "4.2 ",
                      style: context.textTheme.titleMedium!
                          .copyWith(fontWeight: FontWeight.w700),
                    ),
                    SvgPicture.asset(
                      'assets/vectors/star.svg',
                      semanticsLabel: 'Star',
                      width: constraints.maxWidth * .1,
                      colorFilter: const ColorFilter.mode(
                          Color.fromARGB(255, 230, 195, 0), BlendMode.srcIn),
                    ),

                    const Spacer(),
                    Text(
                      "Open Now",
                      style: context.textTheme.bodySmall!
                          .copyWith(fontWeight: FontWeight.w700),
                    ),
                  ],
                ),
                const Text("Xyz Nagar Kurthoul Patna 804454")
              ],
            );
          },
        ),
      ),
    );
  }
}
