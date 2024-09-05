import 'package:backmate/src/features/request_by_you_history/widgets/request_card.dart';
import 'package:flutter/material.dart';

class RequestByYouHistory extends StatefulWidget {
  static const routeAddress = '/request_by_you';
  static const routeName = 'Request-By-You';
  const RequestByYouHistory({super.key});

  @override
  State<RequestByYouHistory> createState() => _RequestByYouHistoryState();
}

class _RequestByYouHistoryState extends State<RequestByYouHistory> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Request By You'),
      ),
      body: ListView.builder(itemBuilder: (context, index) {
        return const Padding(
          padding: EdgeInsets.all(8.0),
          child: RequestCard(),
        );
      }),
    );
  }
}
