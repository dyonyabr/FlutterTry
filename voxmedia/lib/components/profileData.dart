import 'package:flutter/material.dart';

class ProfileData extends StatelessWidget {
  final String name;
  final String phone;
  final String login;

  const ProfileData({
    super.key,
    required this.name,
    required this.phone,
    required this.login,
  });

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      const SizedBox(
        height: 50,
      ),
      ClipOval(
        child: Image.asset(
          "assets/images/medium.png",
          height: 125,
          width: 125,
        ),
      ),
      const SizedBox(
        height: 10,
      ),
      Text(
        name,
        style: const TextStyle(
          color: Colors.white,
          fontSize: 30,
        ),
      ),
      Text(
        "$phone - $login",
        style: const TextStyle(
          color: Color(0xff505050),
          fontSize: 20,
        ),
      ),
    ]);
  }
}
