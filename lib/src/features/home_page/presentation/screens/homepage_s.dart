
import 'package:backmate/src/db/local/hive_query.dart';
import 'package:backmate/src/features/home_page/repos/providers/homepage_repo_provider.dart';

import '../../data/models/current_location_model.dart';
import '/src/features/home_page/presentation/widgets/drawer.dart';
import '/src/services/providers/user_location_service_provider.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '/src/features/home_page/presentation/widgets/your_request_status.dart';
import '/src/features/request_to_you/presentation/screens/request_to_you.dart';
import 'package:go_router/go_router.dart';
import '/src/features/home_page/presentation/widgets/request_info_card.dart';
import '/src/core/utils/size_utils.dart';
import '/src/features/home_page/presentation/widgets/nearby_places.dart';
import '/src/features/home_page/presentation/widgets/title_text.dart';
import 'package:flutter/material.dart';

class HomepageS extends ConsumerStatefulWidget {
  static const routeAddress = '/';
  static const routeName = 'Homepage';

  const HomepageS({super.key});

  @override
  ConsumerState<HomepageS> createState() => _HomepageSState();
}

class _HomepageSState extends ConsumerState<HomepageS> {
  @override
  void initState() {
    super.initState();
   
    Future(()async{
      final location = await ref.read(userLocationServiceProvider).getLatestLocation();

      final currentLocationModel = CurrentLocationModel(
        lat: location.$1,
        lng: location.$2,
        userId:await HiveQuery().getUserID(),

      );
      ref.read(homepageRepoProvider).saveCurrentLocation(currentLocation: currentLocationModel);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: const DrawerW(),
        body: CustomScrollView(
          slivers: [
            SliverAppBar(
              actions: [
                IconButton(onPressed: () {}, icon: const Icon(Icons.search))
              ],
              pinned: true,
              title: const Text("Home"),
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
