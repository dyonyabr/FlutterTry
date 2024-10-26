import 'package:flutter/material.dart';
import 'package:voxmedia/components/bar.dart';
import 'package:voxmedia/components/profileData.dart';

class Settings extends StatefulWidget {
  const Settings({super.key});

  @override
  State<Settings> createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        children: [
          ProfileData(
            name: "Username",
            phone: "+375295783075",
            login: "@login",
          ),
          SizedBox(
            height: 50,
          ),
          Bar(
            title: "My Profile",
            icon: Icons.person,
            iconColor: Colors.blue,
            connectedUp: false,
            connectedDown: false,
          ),
          Bar(
            title: "Wallet",
            icon: Icons.wallet,
            iconColor: Colors.purple,
            connectedUp: false,
            connectedDown: true,
          ),
          Divider(
            thickness: 1,
            height: 0,
            color: Color(0xff333333),
            indent: 85,
            endIndent: 40,
          ),
          Bar(
            title: "Featured",
            icon: Icons.star,
            iconColor: Colors.yellow,
            connectedUp: true,
            connectedDown: true,
          ),
          Divider(
            thickness: 1,
            height: 0,
            color: Color(0xff333333),
            indent: 85,
            endIndent: 40,
          ),
          Bar(
            title: "Recent Calls",
            icon: Icons.call,
            iconColor: Colors.green,
            connectedUp: true,
            connectedDown: false,
          ),
        ],
      ),
    );
  }
}
