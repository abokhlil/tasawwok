import 'package:flutter/material.dart';

class CustomBodyLabel extends StatelessWidget {
  const CustomBodyLabel({super.key, required this.bodyLabel});
  final String bodyLabel;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 25,
        vertical: 10,
      ),
      child: Text(bodyLabel,
          textAlign: TextAlign.center,
          style: Theme.of(context).textTheme.bodyMedium),
    );
  }
}
 