// ignore_for_file: avoid_unnecessary_containers, non_constant_identifier_names, camel_case_types

import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
//import 'package:responsive_web_application/utils/colors.dart';

import '../../utils/constants.dart';
import '../../widgets/commonContainer.dart';

class container5 extends StatefulWidget {
  const container5({super.key});

  @override
  State<container5> createState() => _container5State();
}

class _container5State extends State<container5> {
  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      mobile: Mobilecontainer5(),
      desktop: Desktopcontainer5(),
    );
  }

//  ==========DESKTOP ============

  Widget Desktopcontainer5() {
    return CommonContainerDesktop(
      'USE ANYTIME',
      'Use anytime \nwhen you \nneed',
      'Tellus lacus morbi sagittis lacus in. Amet nisl at \nmauris enim accumsan nisi, tincidunt vel. Enim \nipsum, amet quis ullamcorper eget ut.',
      illustration3,
      false,
    );
  }

// =========MOBILE================

  Widget Mobilecontainer5() {
    return CommonContainerMobile(
     'USE ANYTIME',
      'Use anytime \nwhen you \nneed',
      'Tellus lacus morbi sagittis lacus in. Amet nisl at mauris enim accumsan nisi, tincidunt vel. Enim ipsum, amet quis ullamcorper eget ut.',
      illustration3, 
    );
  }
}
