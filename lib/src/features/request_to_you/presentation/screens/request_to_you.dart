import '/src/features/request_to_you/presentation/widgets/request_type.dart';
import 'package:flutter/material.dart';
import '../../../home_page/presentation/widgets/request_info_card.dart';

class RequestToYou extends StatefulWidget {
  static const routeAddress = '/request_to_you';
  static const routeName = 'Request-To-You';
  const RequestToYou({super.key});

  @override
  State<RequestToYou> createState() => _RequestToYouState();
}

class _RequestToYouState extends State<RequestToYou> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Request To You'),
        ),
        body: ListView.builder(itemBuilder: (context, index) {
          return Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              if (index == 0)
                const RequestType(
                  type: "  Latest Request",
                  color: Colors.blueAccent,
                ),
              const Card(child: RequestInfoCard()),
              if (index == 3)
                const RequestType(
                  type: "  Older Requests",
                  color: Colors.purple,
                )
            ],
          );
        }));
  }
}
