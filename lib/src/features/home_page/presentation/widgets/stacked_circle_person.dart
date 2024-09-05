import 'package:backmate/src/extension/context_extension.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class StackedCirclePerson extends StatelessWidget {
  const StackedCirclePerson({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: context.width * .24,
      child: Stack(
        children: [
          CircleAvatar(
            child: Icon(
              Icons.person,
              color: context.colorScheme.primary,
            ),
          ),
          Positioned(
            left: 20,
            child: CircleAvatar(
              child: Icon(
                Icons.person,
                color: context.colorScheme.primary,
              ),
            ),
          ),
          Positioned(
            left: 40,
            child: CircleAvatar(
              child: Icon(
                Icons.person,
                color: context.colorScheme.primary,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
