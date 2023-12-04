import 'package:flutter/material.dart';

// ignore: camel_case_types
class square extends StatelessWidget {
  final String imagePath;
  final Function()? onTab;
  const square({
    super.key,
    required this.imagePath,
    required this.onTab,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(15),
      decoration: BoxDecoration(
        color: Colors.grey.shade200,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Image.asset(
        imagePath,
        height: 40,
      ),
    );
  }
}
