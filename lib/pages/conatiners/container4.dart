// ignore_for_file: avoid_unnecessary_containers, non_constant_identifier_names, camel_case_types

import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
//import 'package:responsive_web_application/utils/colors.dart';

import '../../utils/constants.dart';
import '../../widgets/commonContainer.dart';

class container4 extends StatefulWidget {
  const container4({super.key});

  @override
  State<container4> createState() => _container4State();
}

class _container4State extends State<container4> {
  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      mobile: Mobilecontainer4(),
      desktop: Desktopcontainer4(),
    );
  }

//  ==========DESKTOP ============

  Widget Desktopcontainer4() {
    return CommonContainerDesktop(
      'FREE SOME COST',
      'Save cost \nfor you and \nfamily',
      'Tellus lacus morbi sagittis lacus in. Amet nisl at \nmauris enim accumsan nisi, tincidunt vel. Enim \nipsum, amet quis ullamcorper eget ut.',
      illustration2,
      true,
    );
  }

// =========MOBILE================

  Widget Mobilecontainer4() {
    return CommonContainerMobile(
      'FREE SOME COST',
      'Save cost \nfor you and \nfamily',
      'Tellus lacus morbi sagittis lacus in. Amet nisl at mauris enim accumsan nisi, tincidunt vel. Enim ipsum, amet quis ullamcorper eget ut.',
      illustration2,
    );
  }
}
