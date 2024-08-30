import 'package:backmate/src/extension/context_extension.dart';
import 'package:flutter/cupertino.dart';

class FilledInputDesign extends StatelessWidget {
  final Widget child;
  const FilledInputDesign({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: context.colorScheme.secondaryContainer),
        color: context.colorScheme.secondaryContainer.withOpacity(.4),
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: child,
    );
  }
}
