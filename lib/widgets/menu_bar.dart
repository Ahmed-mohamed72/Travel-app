import 'package:flutter/material.dart';

class MenuBarWidget extends StatelessWidget {
  const MenuBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const Icon(
          Icons.menu,
          size: 30,
          color: Colors.black54,
        ),
        Container(
          margin: const EdgeInsets.only(right: 20),
          height: 40,
          width: 40,
          decoration: BoxDecoration(
            color: Colors.grey,
            borderRadius: BorderRadius.circular(10),
          ),
        ),
      ],
    );
  }
}
