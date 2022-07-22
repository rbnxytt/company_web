import 'dart:collection';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:website/first_container.dart';
import 'package:website/footer.dart';
import 'package:website/navbar.dart';
import 'package:website/second_container.dart';
import 'package:website/third_container.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<String> navigationTexts = const [
    'Home',
    'About',
    'Services',
    'Contact us'
  ];

  List<String> services = const [
    'Customer Care & Support',
    'Account Management',
    'Billing and Dispute Management',
    'Technical Support'
  ];
  bool hovered = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: CustomScrollView(
        slivers: [
          SliverList(
            delegate: SliverChildListDelegate(
              [
                Navbar(navigationTexts: navigationTexts, hovered: hovered),
                const FirstContainer(),
                const SecondContainer(),
                ThirdContainer(services: services),
                const Footer()
              ],
            ),
          )
        ],
      ),
    );
  }
}
