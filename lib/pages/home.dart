//import 'package:flutter/foundation.dart';
// ignore_for_file: avoid_unnecessary_containers

import 'package:flutter/material.dart';
import 'package:responsive_web_application/pages/conatiners/container3.dart';
import 'package:responsive_web_application/pages/conatiners/container4.dart';
import 'package:responsive_web_application/pages/conatiners/container5.dart';

import '../utils/constants.dart';
import '../widgets/navbar.dart';
import 'conatiners/container1.dart';
import 'conatiners/container2.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    w=MediaQuery.of(context).size.width;
    h=MediaQuery.of(context).size.height;
    
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          child: const Column(
            children: [
              NavBar(),
              container1(),
              container2(),
              container3(),
              container4(),
              container5(),
            ],
          )
        ),
      ),
    );
  }
}