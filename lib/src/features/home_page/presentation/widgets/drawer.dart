import 'package:backmate/src/core/utils/size_utils.dart';
import 'package:backmate/src/features/nearby_places/presentation/screens/nearby_places.dart';
import 'package:backmate/src/features/request_by_you_history/presentation/screens/request_by_you_history.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class DrawerW extends StatelessWidget {
  const DrawerW({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          DrawerHeader(
            decoration: BoxDecoration(
              color: context.colorScheme.primary,
            ),
            child: const Text('Drawer Header'),
          ),
          ListTile(
            title: const Text('Your Requests'),
            onTap: () {
              context.pushNamed(RequestByYouHistory.routeName);
            },
          ),
           ListTile(
            title: const Text('Nearby Places'),
            onTap: () {
              context.pushNamed(NearbyPlaces.routeName);
            },
          ),
        ],
      ),
    );
  }
}
