import 'package:flutter/material.dart';

class Bar extends StatelessWidget {
  final String title;
  final IconData icon;
  final Color iconColor;
  final bool connectedUp;
  final bool connectedDown;

  const Bar({
    super.key,
    required this.title,
    required this.icon,
    required this.iconColor,
    required this.connectedUp,
    required this.connectedDown,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.vertical(
          top: Radius.circular((connectedUp) ? 0 : 15),
          bottom: Radius.circular((connectedDown) ? 0 : 15),
        ),
        color: Colors.grey.shade900,
      ),
      margin: EdgeInsets.fromLTRB(
        40,
        (connectedUp) ? 0 : 0,
        40,
        (connectedDown) ? 0 : 30,
      ),
      padding: const EdgeInsets.all(10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Icon(
                icon,
                color: iconColor,
              ),
              const SizedBox(
                width: 20,
              ),
              Text(
                title,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                ),
                textAlign: TextAlign.center,
              ),
            ],
          ),
          const Row(
            children: [
              Icon(
                Icons.arrow_right,
                color: Colors.white,
              )
            ],
          ),
        ],
      ),
    );
  }
}
