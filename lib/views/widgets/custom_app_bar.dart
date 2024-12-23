import 'package:flutter/material.dart';

import 'package:notes_app/views/widgets/custom_search_icon.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({
    super.key,
    required this.title,
    required this.icon,
    this.onPressed,
  });
  final String title;
  final IconData icon;
  final Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 40),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: const TextStyle(fontSize: 25, color: Colors.white),
          ),
          CustomIcon(
            onPressed: onPressed,
            icon: icon,
          ),
        ],
      ),
    );
  }
}
