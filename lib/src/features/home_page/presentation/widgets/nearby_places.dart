import 'package:backmate/src/extension/context_extension.dart';
import 'package:flutter/material.dart';

import 'place_info_card.dart';
import 'title_text.dart';

class NearbyPlaces extends StatelessWidget {
  final String title;
  const NearbyPlaces({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TitleText(title: title),
        SizedBox(
          height: context.height * .01,
        ),
        SizedBox(
          height: context.height * .25,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: 5,
            itemBuilder: (context, index) {
              return const PlaceInfoCard();
            },
          ),
        ),
      ],
    );
  }
}
