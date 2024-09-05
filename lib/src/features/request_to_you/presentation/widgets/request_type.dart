import 'package:flutter/material.dart';

class RequestType extends StatelessWidget {
  final String _type;
  final Color _color;
  const RequestType({super.key, required String type, required Color color})
      : _color = color,
        _type = type;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 8.0),
          child: Container(
            width: 10,
            height: 10,
            decoration: BoxDecoration(
              color: _color,
              borderRadius: BorderRadius.circular(15),
            ),
          ),
        ),
        Text(_type),
      ],
    );
  }
}
