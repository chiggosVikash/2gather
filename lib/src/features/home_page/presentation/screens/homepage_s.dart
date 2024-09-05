import 'package:backmate/src/features/home_page/presentation/widgets/drawer.dart';

import '/src/features/home_page/presentation/widgets/your_request_status.dart';
import '/src/features/request_to_you/presentation/screens/request_to_you.dart';
import 'package:go_router/go_router.dart';
import '/src/features/home_page/presentation/widgets/request_info_card.dart';
import '/src/core/utils/size_utils.dart';
import '/src/features/home_page/presentation/widgets/nearby_places.dart';
import '/src/features/home_page/presentation/widgets/title_text.dart';
import 'package:flutter/material.dart';

class HomepageS extends StatefulWidget {
  static const routeAddress = '/';
  static const routeName = 'Homepage';

  const HomepageS({super.key});

  @override
  State<HomepageS> createState() => _HomepageSState();
}

class _HomepageSState extends State<HomepageS> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: const DrawerW(),
        body: CustomScrollView(
          slivers: [
            const SliverAppBar(
              pinned: true,
              title: Text("Home"),
            ),
            SliverToBoxAdapter(
              child: Container(
                padding: EdgeInsets.symmetric(
                    horizontal: context.width * .04,
                    vertical: context.height * .01),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const NearbyPlaces(title: "Nearby Restaurants"),
                    SizedBox(
                      height: context.height * .02,
                    ),
                    const NearbyPlaces(title: "Nearby Hotels"),
                    SizedBox(
                      height: context.height * .02,
                    ),
                    const NearbyPlaces(title: "Nearby Pubs")
                  ],
                ),
              ),
            ),
            SliverToBoxAdapter(
              child: Container(
                padding: EdgeInsets.symmetric(
                    horizontal: context.width * .04,
                    vertical: context.height * .01),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const TitleText(title: "Recent Requests (2)"),
                    SizedBox(
                      height: context.height * .02,
                    ),
                    Column(
                      children: List.generate(2, (index) {
                        return const RequestInfoCard();
                      }),
                    ),
                    Align(
                        alignment: Alignment.topRight,
                        child: FilledButton.tonal(
                            style: FilledButton.styleFrom(
                                visualDensity: VisualDensity.compact),
                            onPressed: () {
                              context.pushNamed(RequestToYou.routeName);
                            },
                            child: const Text("View All"))),
                    const YourRequestStatus()
                  ],
                ),
              ),
            )
          ],
        ));
  }
}
